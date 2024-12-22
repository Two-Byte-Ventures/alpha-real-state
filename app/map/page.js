"use client"
import { useEffect, useRef } from "react";
import mapboxgl from "mapbox-gl";
import 'mapbox-gl/dist/mapbox-gl.css';

export default function Page() {
  const mapRef = useRef();
  const mapContainerRef = useRef();

  useEffect(() => {
    mapboxgl.accessToken = process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN;
    mapRef.current = new mapboxgl.Map({
      container: mapContainerRef.current,
      center: [-103.668, 23.420],
      zoom: 4,
      style: process.env.NEXT_PUBLIC_MAPBOX_STYLE
    });

    return () => {
      mapRef.current.remove()
    }
  }, [])

  return (
    <div className="w-full h-screen flex justify-center items-center">
      <div id='map-container' className="w-full h-full" ref={mapContainerRef}/>
    </div>
  );
}
