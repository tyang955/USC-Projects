import { useState, useEffect } from 'react';
import { loadModules } from 'esri-loader';

const Campus = (props) => {

    const [graphic, setGraphic] = useState(null);
    useEffect(() => {

        loadModules(['esri/Graphic']).then(([Graphic]) => {
            // Create a polygon geometry
            const polygon = {
                type: "polygon", // autocasts as new Polygon()
                rings: [
                    [-118.28892224259157, 34.02495122100054],
                    [-118.2899038937467, 34.02379689348719],
                    [-118.28960099833539, 34.02067645981281],
                    [-118.2880299876945, 34.01918190941739],
                    [-118.28586576536743, 34.018840583598056],
                    [-118.28384330363707, 34.02009619979822],
                    [-118.28655874462612, 34.02350105321015],
                    [-118.28892224259157, 34.02495122100054]

                ]
            };

            // Create a symbol for rendering the graphic
            const fillSymbol = {
                type: "simple-fill", // autocasts as new SimpleFillSymbol()
                color: [200,0,20, 0.25],
                outline: { // autocasts as new SimpleLineSymbol()
                    color: [255, 255, 255],
                    width: 1
                }
            };

            // Add the geometry and symbol to a new graphic
            const graphic = new Graphic({
                geometry: polygon,
                symbol: fillSymbol
            });
            setGraphic(graphic);
            props.view.graphics.add(graphic);
        }).catch((err) => console.error(err));

        return function cleanup() {
            props.view.graphics.remove(graphic);
        };
    }, []);

    return null;

}

export default Campus;