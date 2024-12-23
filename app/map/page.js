"use client"
import { useEffect, useRef } from "react";
import mapboxgl from "mapbox-gl";
import 'mapbox-gl/dist/mapbox-gl.css';

export default function Page() {
  const mapRef = useRef();
  const mapContainerRef = useRef();

  const isMapboxSupported = mapboxgl.supported() && process.env.NEXT_PUBLIC_MAPBOX_ENABLE == 'true';

  useEffect(() => {
    if (!isMapboxSupported) return;

    mapboxgl.accessToken = process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN;
    mapRef.current = new mapboxgl.Map({
      container: mapContainerRef.current,
      center: [-100.668, 23.420],
      zoom: 5,
      style: process.env.NEXT_PUBLIC_MAPBOX_GL_STYLE_URL
    });

    return () => {
      mapRef.current.remove();
    }
  }, [])

  return (
    <div className="w-full h-screen flex justify-center items-center">
      <div id='map-container' className="w-full h-full" ref={mapContainerRef}/>
    </div>
  );
}
