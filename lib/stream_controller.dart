
import 'dart:async';

// Global stream controller
StreamController<List<double>> dataStreamController1 = StreamController<List<double>>.broadcast();
// Global stream controller
StreamController<List<int>> dataStreamController2 = StreamController<List<int>>.broadcast();
// Global stream controller
StreamController<List<int>> dataStreamController3 = StreamController<List<int>>.broadcast();

// Function to add data to the stream
void addDataToStream1(List<double> data) {
  dataStreamController1.add(data);
}
// Function to add data to the stream
void addDataToStream2(List<int> data) {
  dataStreamController2.add(data);
}
// Function to add data to the stream
void addDataToStream3(List<int> data) {
  dataStreamController3.add(data);
}

// Getter to access the stream
Stream<List<double>> get dataStream1 => dataStreamController1.stream;
// Getter to access the stream
Stream<List<int>> get dataStream2 => dataStreamController2.stream;
// Getter to access the stream
Stream<List<int>> get dataStream3 => dataStreamController3.stream;