PROGRAM MAIN

  IMPLICIT NONE
  INTEGER, PARAMETER :: LSIZE = 8
  REAL(8), PARAMETER :: PI = 4.0D0 * ATAN(1.0D0)
  INTEGER :: I1, I2, I3, II, FLAG
  REAL(8) :: X(3), VEC(3), SP(3,4), THETA, QUE1(3), PHI, QUE2(3)
  REAL(8), DIMENSION(LSIZE,LSIZE,LSIZE,3) :: SPINS1, SPINS2
  REAL(8), DIMENSION(LSIZE**3,LSIZE**3) :: SI_SJ
  REAL(8), DIMENSION(LSIZE,LSIZE,LSIZE) :: S_F
  SP(:,1) = DBLE([ 0, 1, 0])
  SP(:,2) = DBLE([-1, 0, 0])
  SP(:,3) = DBLE([ 0,-1, 0])
  SP(:,4) = DBLE([ 1, 0, 0])
  QUE1 = [PI, 0.0D0, 0.5D0*PI]
  QUE2 = [PI, PI, 0.0D0]
  DO I1 = 1, LSIZE
     DO I2 = 1, LSIZE
        DO I3 = 1, LSIZE
           X = DBLE([I1,I2,I3])
           II = MOD(I3,4)+1
           SELECT CASE (MOD(I3,2))
           CASE (1)
              FLAG = I1
           CASE (0)
              FLAG = I2
           END SELECT
           VEC = DBLE((-1)**FLAG) * SP(:,II)
           SPINS1(I1,I2,I3,:) = VEC
           WRITE(1,'(6(F15.10,1X))')X, VEC
        END DO
     END DO
  END DO
  CALL CALCULATE_SI_DOT_SJ(SPINS1,SI_SJ)
  CALL STRUCTURE_FACTOR_FROM_SI_DOT_SJ(SI_SJ,S_F)

  DO I1 = 1, LSIZE
     DO I2 = 1, LSIZE
        DO I3 = 1, LSIZE
           WRITE(2,'(3(I3,1X),3(F15.10,1X))')[I1,I2,I3]-1,S_F(I1,I2,I3)
        END DO
     END DO
  END DO



  DO I1 = 1, LSIZE
     DO I2 = 1, LSIZE
        DO I3 = 1, LSIZE
           X = DBLE([I1,I2,I3])
           THETA = DOT_PRODUCT(QUE1,X)+0.5D0*PI
           PHI   = DOT_PRODUCT(QUE2,X)
           VEC(2) = COS(PHI)*SIN(THETA)
           VEC(3) = SIN(PHI)*SIN(THETA)
           VEC(1) = COS(THETA)
           SPINS2(I1,I2,I3,:) = VEC
           WRITE(3,'(6(F15.10,1X))')X, VEC
        END DO
     END DO
  END DO
  CALL CALCULATE_SI_DOT_SJ(SPINS2,SI_SJ)
  CALL STRUCTURE_FACTOR_FROM_SI_DOT_SJ(SI_SJ,S_F)

  DO I1 = 1, LSIZE
     DO I2 = 1, LSIZE
        DO I3 = 1, LSIZE
           WRITE(4,'(3(I3,1X),3(F15.10,1X))')[I1,I2,I3]-1,S_F(I1,I2,I3)
           WRITE(*,'(3(I2,1X),3(F15.10,1X))')I1,I2,I3,SPINS1(I1,I2,I3,:)-SPINS2(I1,I2,I3,:)
        END DO
     END DO
  END DO

CONTAINS

  SUBROUTINE CALCULATE_SI_DOT_SJ(SPINS,SI_DOT_SJ)
    IMPLICIT NONE
    REAL(8), DIMENSION(:,:,:,:), INTENT(IN) :: SPINS
    REAL(8), DIMENSION(:,:), INTENT(OUT) :: SI_DOT_SJ
    INTEGER :: I1,I2,I3,J1,J2,J3,II,JJ,LSIZE
    REAL(8) :: TERM, SI(3), SJ(3)
    LSIZE = SIZE(SPINS,DIM = 1)
    SI_DOT_SJ = 0.0D0
    !ALL THE SITES HAVE NON ZERO SPINS
    DO I1 = 1, LSIZE
       DO I2 = 1, LSIZE
          DO I3 = 1, LSIZE
             II = LSIZE**2 * (I1 - 1) + LSIZE * (I2 - 1) + I3
             SI = SPINS(I1,I2,I3,:)
             DO J1 = 1, LSIZE
                DO J2 = 1, LSIZE
                   DO J3 = 1, LSIZE
                      JJ = LSIZE**2 * (J1 - 1) + LSIZE * (J2 - 1) + J3
                      IF( II < JJ ) CYCLE
                      SJ = SPINS(J1,J2,J3,:)
                      TERM = DOT_PRODUCT(SI,SJ)
                      !PRINT*,TERM;PAUSE
                      SI_DOT_SJ(II,JJ) = TERM
                      SI_DOT_SJ(JJ,II) = TERM
                   END DO
                END DO
             END DO
          END DO
       END DO
    END DO
    RETURN
  END SUBROUTINE CALCULATE_SI_DOT_SJ

  SUBROUTINE STRUCTURE_FACTOR_FROM_SI_DOT_SJ(SI_DOT_SJ,STRUCTURE_FACTOR)
    IMPLICIT NONE
    REAL(8), DIMENSION(:,:), INTENT(IN) :: SI_DOT_SJ
    REAL(8), DIMENSION(:,:,:), INTENT(OUT) :: STRUCTURE_FACTOR
    REAL(8), PARAMETER :: TWOPI = 8.0D0 * ATAN(1.0D0)
    REAL(8) :: TMPDP,COEFF, TMPSQ
    INTEGER :: LSIZE
    INTEGER :: Q1,Q2,Q3,Q(3),RIJ(3),NORMALIZE
    INTEGER :: I1,I2,I3,J1,J2,J3,ITMP, II, JJ
    INTEGER, ALLOCATABLE, DIMENSION(:,:,:) :: INDICES

    LSIZE = SIZE(STRUCTURE_FACTOR,DIM = 1)
    COEFF = TWOPI/DBLE(LSIZE)
    ALLOCATE(INDICES(LSIZE,LSIZE,LSIZE))
    FORALL (I1=1:LSIZE, I2=1:LSIZE, I3=1:LSIZE)
       INDICES(I1,I2,I3) = LSIZE**2 * (I1 - 1) + LSIZE * (I2 - 1) + I3
    END FORALL
    NORMALIZE = LSIZE**6
    !PRINT*,NORMALIZE
    TMPDP = 0.0D0
    DO ITMP = 1,LSIZE**3
       TMPDP = TMPDP + SI_DOT_SJ(ITMP,ITMP)
    END DO
    STRUCTURE_FACTOR = TMPDP

    LOOP_Q1:DO Q1 = 1,LSIZE
       Q(1) = Q1 - 1
       LOOP_Q2:DO Q2 = 1,LSIZE
          Q(2) = Q2 - 1
          LOOP_Q3:DO Q3 = 1,LSIZE
             Q(3) = Q3 - 1
             TMPSQ = 0.0D0
             DO I1 = 1,LSIZE
                DO J1 = 1,LSIZE
                   RIJ(1) = I1 - J1
                   DO I2 = 1,LSIZE
                      DO J2 = 1,LSIZE
                         RIJ(2) = I2 - J2
                         DO I3 = 1,LSIZE
                            DO J3 = 1,LSIZE
                               RIJ(3) = I3 - J3
                               II = INDICES(I1,I2,I3)
                               JJ = INDICES(J1,J2,J3)
                               IF(JJ >= II)CYCLE
                               ITMP = DOT_PRODUCT(Q,RIJ)
                               TMPDP = COEFF * DBLE(ITMP)
                               TMPDP = SI_DOT_SJ(II,JJ) * 2.0D0 * COS(TMPDP)
                               TMPSQ = TMPSQ + TMPDP
                            END DO
                         END DO
                      END DO
                   END DO
                END DO
             END DO
             STRUCTURE_FACTOR(Q1,Q2,Q3) = STRUCTURE_FACTOR(Q1,Q2,Q3) + TMPSQ
          END DO LOOP_Q3
       END DO LOOP_Q2
    END DO LOOP_Q1

    STRUCTURE_FACTOR = STRUCTURE_FACTOR / DBLE(NORMALIZE)
    RETURN

  END SUBROUTINE STRUCTURE_FACTOR_FROM_SI_DOT_SJ

END PROGRAM MAIN
