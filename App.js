/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, {useState, useEffect} from 'react';

import {StyleSheet, Text, View, TextInput, Alert} from 'react-native';
import {NativeModules, Button} from 'react-native';

const App = () => {
  useEffect(() => {
    NativeModules.KeyChainWrapper;
  }, []);

  const [password, setPassword] = useState('');

  const savePasswordBtnClicked = () => {
    NativeModules.KeyChainWrapper.savePassword(password, value => {
      debugger
      if (value) {
        setPrint();
        console.log('Success');
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

  const onPress_3 = (num: any) => {
    const {C_to_S} = NativeModules;
    //eslint-disable-next-line radix
    if (parseInt(num)) {
      // eslint-disable-next-line radix
      C_to_S.HelloC(parseInt(num), (_err, res) => console.log(res));
    } else {
      Alert.alert('Please enter a digit');
    }

    //C_to_S.HelloC((_err, res) => console.log(res));
  };

  return (
    <View style={styles.container}>
      <Text> Practice !</Text>
      <Button title="C++ to React Native" color="#841584" onPress={onPress} />
      <Button
        title="Obj C to React Native"
        color="#841584"
        onPress={onPress_2}
      />

      <TextInput
        // eslint-disable-next-line react-native/no-inline-styles
        style={{width: '50%', height: 40, borderBottomColor: 'black'}}
        onChangeText={e => setPassword(e)}
        value={password}
        placeholder={'Input here'}
      />

      <Button
        title="React Native To Swift"
        color="#841584"
        onPress={savePasswordBtnClicked}
      />

      <Button
        title="C To React Native"
        color="#841584"
        // eslint-disable-next-line radix
        onPress={() => onPress_3(password)}
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
