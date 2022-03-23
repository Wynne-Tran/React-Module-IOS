/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, {useState, useEffect} from 'react';

import {
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  useColorScheme,
  View,
} from 'react-native';
import {NativeModules, Button} from 'react-native';

const App = () => {

  const [print, setPrint] = useState('');
  const RNShare = NativeModules.RNShare;
  const onPress = () => {
    RNShare.someMethod((_err, res) => setPrint(res));
  };

  const {CalendarModule} = NativeModules;

  const onPress_2 = () => {
    CalendarModule.createCalendarEventCallback(
      'testName',
      'testLocation',
      error => {
        console.error(`Error found! ${error}`);
      },
      eventId => {
        setPrint(`event id ${eventId} returned`);
        console.log(`event id ${eventId} returned`);
      },
    );
  };
  console.log(print);

  return (
    <View style={styles.container}>
      <Text> Practice !</Text>
      <Button title="C++" color="#841584" onPress={onPress} />

      <Button title="Object C" color="#841584" onPress={onPress_2} />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default App;
