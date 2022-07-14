PROGRAM MAIN
  IMPLICIT NONE
  INTEGER, PARAMETER :: NUM = 4
  INTEGER :: N1, N2, N3, I1, I2, I3, FLAG
  INTEGER :: J1,J2,J3,K1,K2,K3
  REAL(8), DIMENSION(3) :: VEC, VEC1, VEC2, A1, A2, A3

  A1 = [1,1,0]
  A2 = [1,0,1]
  A3 = [0,1,1]

  OPEN(1,FILE='znbl_latt.dat')
  OPEN(2,FILE='znbl_bond.dat')
  DO I1 = 1, NUM
     J1 = MERGE( 0, 1, I1 == NUM)
     K1 = MERGE( 0, 1, I1 == 1  )
     DO I2 = 1, NUM
        J2 = MERGE( 0, 1, I2 == NUM)
        K2 = MERGE( 0, 1, I2 == 1  )
        DO I3 = 1, NUM
           J3 = MERGE( 0, 1, I3 == NUM)
           K3 = MERGE( 0, 1, I3 == 1  )
           FLAG = MOD(I1+I2+I3, 2)
           IF (FLAG == 1) THEN
              VEC  = [I1,I2,I3]
              VEC1 = VEC
              VEC2 = VEC + [1,1,1]*0.5D0
              IF (J1*J2*J3 == 1) THEN
                 WRITE(1,'(3(F10.5,1X),I4)')VEC1,1
                 WRITE(1,'(3(F10.5,1X),I4)')VEC2,2

                 WRITE(2,'(6(F10.5,1X),I4)')VEC1,VEC2-VEC1,FLAG
                 VEC1 = VEC + [1,1,1]*0.5D0
                 WRITE(2,'(6(F10.5,1X),I4)')VEC1,VEC2-VEC1,FLAG
                 VEC2 = VEC1 + [-1,1,1]*0.5D0
                 WRITE(2,'(6(F10.5,1X),I4)')VEC1,VEC2-VEC1,FLAG
                 VEC2 = VEC1 + [1,-1,1]*0.5D0
                 WRITE(2,'(6(F10.5,1X),I4)')VEC1,VEC2-VEC1,FLAG
                 VEC2 = VEC1 + [1,1,-1]*0.5D0
                 WRITE(2,'(6(F10.5,1X),I4)')VEC1,VEC2-VEC1,FLAG
              END IF
           END IF
        END DO
     END DO
  END DO

END PROGRAM MAIN
