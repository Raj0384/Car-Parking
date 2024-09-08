FROM openjdk:21-jdk
EXPOSE 8585
ADD target/Car-Parking-Reservation-System.war Car-Parking-Reservation-System.war
CMD ["java", "-jar", "Car-Parking-Reservation-System.war"]