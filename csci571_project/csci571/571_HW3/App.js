import './App.css';
import React from 'react';
import * as ReactDOM from 'react-dom';
import {Map} from '@esri/react-arcgis';
import {Scene} from '@esri/react-arcgis';
import {WebMap,WebScene} from '@esri/react-arcgis';
import Campus from './Campus';

function App() {
// like we started out with
  ReactDOM.render(
      <Map /> ,
      document.getElementById('container')
  );
}// App()

// INSTEAD of 'export default App;'
export default (props) => (
    <Scene style={{ width: '70vw', height: '90vh' }}
        //mapProperties={{ basemap: 'satellite' }}
         viewProperties={{
           center: [-118.28538,34.0205],
           zoom: 15
         }}>
      <Campus />
    </Scene>
)
