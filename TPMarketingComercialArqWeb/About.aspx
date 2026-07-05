<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TPMarketingComercialArqWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<style>
    .about-hero {
        background: linear-gradient(135deg, #1a1a2e 0%, #0f3460 100%);
        color: white;
        padding: 50px 40px;
        border-radius: 12px;
        margin-bottom: 36px;
        text-align: center;
    }
    .about-hero h2 { font-size: 2.4rem; font-weight: 700; margin-bottom: 8px; }
    .about-hero p { color: #a0c4ff; font-size: 1.1rem; margin: 0; }

    .mision-card {
        background: #f0f4ff;
        border-left: 5px solid #0f3460;
        border-radius: 8px;
        padding: 28px 32px;
        margin-bottom: 28px;
    }
    .mision-card h4 { color: #0f3460; margin-bottom: 10px; }
    .mision-card p  { color: #444; line-height: 1.8; margin: 0; }

    .servicios-grid {
        display: flex;
        gap: 20px;
        flex-wrap: wrap;
        margin-bottom: 36px;
    }
    .servicio-card {
        flex: 1;
        min-width: 180px;
        background: #fff;
        border: 1px solid #dee2e6;
        border-top: 4px solid #e94560;
        border-radius: 8px;
        padding: 24px 20px;
        text-align: center;
    }
    .servicio-card .icono { font-size: 2.2rem; margin-bottom: 12px; }
    .servicio-card h5 { color: #0f3460; margin-bottom: 8px; }
    .servicio-card p  { color: #666; font-size: 0.9rem; margin: 0; }

    .valores {
        background: #1a1a2e;
        color: white;
        border-radius: 12px;
        padding: 36px 40px;
        margin-bottom: 28px;
    }
    .valores h4 { color: #a0c4ff; margin-bottom: 20px; text-align: center; }
    .valores ul { list-style: none; padding: 0; display: flex; flex-wrap: wrap; gap: 12px; justify-content: center; }
    .valores ul li {
        background: #0f3460;
        border-radius: 20px;
        padding: 8px 20px;
        font-size: 0.95rem;
    }

    /* NUEVOS ESTILOS PARA LA SECCIÓN DE GEOLOCALIZACIÓN */
    .map-section {
        background: #ffffff;
        border: 1px solid #dee2e6;
        border-radius: 12px;
        padding: 30px;
        margin-bottom: 20px;
        box-shadow: 0 4px 6px rgba(0,0,0,0.05);
    }
    .map-section h4 { color: #0f3460; margin-bottom: 15px; font-weight: 600; }
    .map-container {
        position: relative;
        padding-bottom: 40%; /* Relación de aspecto del mapa */
        height: 0;
        overflow: hidden;
        border-radius: 8px;
        border: 1px solid #ddd;
    }
    .map-container iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>

<main aria-labelledby="title">

    <div class="about-hero">
        <h2 id="title">🖨️ Sobre 3D Shop</h2>
        <p>Innovación, precisión y tecnología al servicio de tus proyectos.</p>
    </div>

    <div class="mision-card">
        <h4>🎯 Nuestra misión</h4>
        <p>
            En <strong>3D Shop</strong> creemos que la fabricación aditiva debe ser accesible para todos.
            Desde nuestros inicios, trabajamos para brindar soluciones de impresión 3D de alta calidad
            a particulares, emprendedores y empresas, acompañando cada proyecto desde la idea hasta el producto final.
            Nos especializamos en la venta de artículos impresos, insumos y materiales, y también ofrecemos
            servicios de mantenimiento y reparación de equipos de impresión 3D.
        </p>
    </div>

    <div class="servicios-grid">
        <div class="servicio-card">
            <div class="icono">🛒</div>
            <h5>Venta de artículos</h5>
            <p>Piezas decorativas, funcionales y técnicas listas para usar, impresas con materiales de primera calidad.</p>
        </div>
        <div class="servicio-card">
            <div class="icono">📦</div>
            <h5>Insumos y materiales</h5>
            <p>Filamentos PLA, ABS, PETG, resinas y más. Todo lo que necesitás para imprimir.</p>
        </div>
        <div class="servicio-card">
            <div class="icono">🔧</div>
            <h5>Reparación de equipos</h5>
            <p>Service técnico especializado en impresoras 3D FDM y SLA. Diagnóstico, reparación y calibración.</p>
        </div>
        <div class="servicio-card">
            <div class="icono">📐</div>
            <h5>Diseño personalizado</h5>
            <p>¿Tenés una idea? Nuestro equipo la convierte en un modelo 3D listo para imprimir.</p>
        </div>
    </div>

    <div class="valores">
        <h4>Nuestros valores</h4>
        <ul>
            <li>✅ Calidad garantizada</li>
            <li>⚡ Rapidez en la entrega</li>
            <li>🤝 Atención personalizada</li>
            <li>🌿 Materiales sustentables</li>
            <li>🔬 Innovación constante</li>
            <li>💡 Pasión por la tecnología</li>
        </ul>
    </div>

    <div class="map-section">
        <h4>📍 Dónde nos encontramos:</h4>
        <div class="map-container">
            <iframe 
                src="https://maps.google.com/maps?q=UAI%20Lomas%20de%20Zamora,%20Av.%20Hip%C3%B3lito%20Yrigoyen%209940,%20Argentina&t=&z=16&ie=UTF8&iwloc=&output=embed" 
                allowfullscreen="" 
                loading="lazy" 
                referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>
    </div>

</main>
</asp:Content>