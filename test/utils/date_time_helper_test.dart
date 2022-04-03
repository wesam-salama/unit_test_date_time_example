import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_date_time_example/utils/date_time_helper.dart';

main() {
  group('date_time_helper',(){
    group('getTimeOfTheDay',(){
      test('DateTimeHelper should return Morning', (){
        //Arrange
        DateTime currentTime = DateTime(2022,4,2,7);

        //Act
        String timeOfDay = DateTimeHelper.instance.getTimeOfTheDay(currentTime);

        //Assert
        expect(timeOfDay,'Morning');
      });

      test('DateTimeHelper should return Afternoon', (){
        //Arrange
        DateTime currentTime = DateTime(2022,4,2,14);

        //Act
        String timeOfDay = DateTimeHelper.instance.getTimeOfTheDay(currentTime);

        //Assert
        expect(timeOfDay,'Afternoon');
      });

      test('DateTimeHelper should return Evening', (){
        //Arrange
        DateTime currentTime = DateTime(2022,4,2,20);

        //Act
        String timeOfDay = DateTimeHelper.instance.getTimeOfTheDay(currentTime);

        //Assert
        expect(timeOfDay,'Evening');
      });

      test('DateTimeHelper should return Night', (){
        //Arrange
        DateTime currentTime = DateTime(2022,4,2,3);

        //Act
        String timeOfDay = DateTimeHelper.instance.getTimeOfTheDay(currentTime);

        //Assert
        expect(timeOfDay,'Night');
      });
    });
  });
}

