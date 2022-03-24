/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, {useState, useEffect} from 'react';

import {StyleSheet, Text, View, TextInput} from 'react-native';
import {NativeModules, Button} from 'react-native';

const App = () => {

  // eslint-disable-next-line no-unused-vars
  useEffect(() => {
    NativeModules.KeyChainWrapper;
  }, []);

  const [password, setPassword] = useState('');

  const savePasswordBtnClicked = () => {
    NativeModules.KeyChainWrapper.savePassword(password, value => {
      debugger
      if (value) {
        //console.log(password);
      } else {
        console.log('Error');
      }
    });
  };

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

      <TextInput
        // eslint-disable-next-line react-native/no-inline-styles
        style={{width: '50%', height: 40, borderBottomColor: 'black'}}
        onChangeText={e => setPassword(e)}
        value={password}
      />
      <Button
        title="Send Data To Swift"
        color="#841584"
        onPress={savePasswordBtnClicked}
      />

      <Text>{print}</Text>
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
