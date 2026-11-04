# ✨ DermaGlow AI — Professional Hair & Skin Health Intelligence

> **Next-Generation Beauty-Tech Application**: An interactive, commercial-grade web platform providing AI-assisted visual skin and hair/scalp analysis, customized multi-step cosmetic routines, ingredient transparency, and privacy-first user history.

---

## 🌸 Overview

**DermaGlow AI** combines modern multimodal vision capabilities with dermatological and trichological principles to deliver personalized cosmetic wellness guidance. Users can upload face and scalp photographs, complete an in-depth cosmetic profile assessment, receive detailed visual observations, and obtain custom morning, evening, and weekly regimens.

---

## 🎨 Design & Aesthetic System

Designed with a premium beauty-tech visual identity:
- **Palette**: Soft lavender mist (`#FAF5FF`, `#FDF8FF`), gentle blush pinks (`#FECDD3`, `#FDA4AF`), and subtle radiant violet accents (`#C084FC`, `#9333EA`).
- **Typography**: Editorial serif headings (*Playfair Display*) paired with clean biometric body typography (*Plus Jakarta Sans*).
- **Cards & Elements**: Glassmorphic frosted cards (`backdrop-blur-md bg-white/80 border border-purple-100`), smooth biometric scanning animations, and intuitive responsive navigation.
- **Iconography**: Clean vector icons powered by *Lucide React*.

---

## 🚀 Key Modules & Features

### 1. Landing Page
- Modern hero section with headline: *"Discover Your Hair & Skin Health"*.
- Subtitle: *"Your personal AI-powered hair and skincare companion"*.
- Call-to-actions: *"Get Started"* and *"Try Instant Demo Scan"*.
- Dedicated feature pillars for Skin Diagnostics, Trichology Scan, and Custom Care.
- Ethical safety commitment and non-diagnostic notices.

### 2. User Registration & Deep Questionnaire
- Multi-step interactive flow with dynamic progress tracking:
  - **Age group**: Demographics baseline.
  - **Skin profile**: Oily, Dry, Combination, Normal, or Unsure.
  - **Hair & scalp profile**: Pattern (Straight, Wavy, Curly, Coily) and Scalp condition (Normal, Dry, Oily, Sensitive/Itchy).
  - **Target concerns**: Acne/blemishes, hyperpigmentation, uneven texture, redness, frizz, flakes, hair fall.
  - **Sensitivities & Allergies**: Flagged ingredients to avoid (fragrance, sulfates, etc.).
  - **Current products**: Active products currently in use.

### 3. Dual Biometric Image Upload
- **Module A**: Face image upload for skin analysis.
- **Module B**: Hair/scalp image upload for hair and parting analysis.
- Drag-and-drop, instant client preview, replace/remove controls, and file validation (JPG, PNG, WEBP up to 10MB).
- Built-in **Photography & Lighting Guide modal** (natural daylight, neutral expression, clean skin/scalp).
- Instant **"Load Demo Photographs"** button for rapid evaluation.
- Explicit privacy and consent checkbox.

### 4. Multimodal AI Skin Analysis
- Apparent skin type and T-zone oiliness balance.
- Stratum corneum barrier resilience index (0–100).
- Surface pore and micro-texture evaluation.
- Visible blemish and congestion detection.
- Vascular redness and tone homogeneity.
- Periorbital (under-eye) appearance.
- Clear limitations notice and cosmetic care suggestions.

### 5. Multimodal AI Hair & Scalp Analysis
- Hair pattern typing (Type 1 to Type 4 coily).
- Cuticle alignment and frizz resistance index.
- Strand hydration and elasticity markers.
- Scalp flaking and mechanical sensitivity observations.
- Apparent follicular density notes with explicit non-diagnostic disclaimers.

### 6. Interactive Scanner UI
- Futuristic biometric scan animation with laser tracking beam over uploaded photos.
- Dynamic phase indicators cycling through optical calibration, texture mapping, sebum detection, and regimen synthesis.

### 7. Personalized Regimen Generator
- **Skincare**:
  - 4-step Morning routine (Cleanser -> Antioxidant -> Moisturizer -> Broad Spectrum SPF 50+).
  - 4-step Evening routine (Double cleanse -> Treatment -> Barrier lipid seal).
  - Specific cleanser, moisturizer, and sunscreen recommendations.
  - Beneficial cosmetic actives vs flagged ingredients to avoid.
- **Haircare**:
  - Customized wash cadence (e.g. 2-3x weekly based on scalp sebum).
  - Targeted shampoo, conditioner, hair mask, hair oil, and scalp care suggestions.
  - Interactive **7-Day Weekly Hair Schedule Planner** (Monday through Sunday).

### 8. Curated Product Recommendations
- Curated cosmetic formulations matched to user barrier status and hair concerns.
- Clear labeling: sample products, example prices, dermatological safety badges, and key ingredients.
- "Add to My Regimen" quick toggle.

### 9. History & Side-by-Side Comparison
- LocalStorage-based persistence of past scans with timestamps and scores.
- Side-by-side progression comparison modal between any two historical scans.
- View previous reports and delete individual or all records.

### 10. Privacy & Settings
- Ephemeral in-memory image processing (Node.js RAM buffers only; zero disk retention).
- Transparent data handling policy modal.
- Active AI engine indicator (Live Google Gemini Vision vs Simulated High-Fidelity Demo).

---

## 🛠️ Technology Stack

- **Frontend**: React 18, Vite 5, TypeScript, Tailwind CSS, Lucide React
- **Backend**: Node.js, Express, Multer (MemoryStorage), `@google/generative-ai`
- **Data & History**: Client-side LocalStorage sandbox, zero database configuration required

---

## ⚡ Setup & Execution Instructions

### Prerequisites
- Node.js (v18 or higher recommended). A portable Node.js runtime is pre-configured in `tools/node`.

### Option A: Run Full Application (Production Single-Port Server)
The Express backend automatically serves the pre-compiled React frontend:
```bash
# From the project root:
cd server
npm start
```
Open **[http://localhost:5000](http://localhost:5000)** in your web browser.

---

### Option B: Run in Development Mode (Hot-Reload)

**Terminal 1 — Backend Server:**
```bash
cd server
npm run dev
# Running on http://localhost:5000
```

**Terminal 2 — Frontend Dev Server:**
```bash
cd client
npm run dev
# Running on http://localhost:3000 (proxies /api to :5000)
```
Open **[http://localhost:3000](http://localhost:3000)** in your web browser.

---

## 🔑 Configuring Live Gemini Vision AI (Optional)

DermaGlow AI comes with a built-in **High-Fidelity Demo Simulation Engine** that operates automatically when no API key is provided.

To enable live Google Gemini Multimodal Vision:
1. Obtain an API key from [Google AI Studio](https://aistudio.google.com/).
2. Open `server/.env` and insert your key:
   ```env
   PORT=5000
   NODE_ENV=development
   GEMINI_API_KEY="your_gemini_api_key_here"
   ```
3. Restart the server. The application will instantly switch to **Gemini 1.5 Flash Vision (Live)**.

---

## ⚠️ Medical & Ethical Disclaimer

DermaGlow AI is strictly an aesthetic and cosmetic wellness educational tool. It does **not** diagnose, treat, or prevent clinical medical pathologies (including melanoma, dermatitis, alopecia areata, fungal infections, or eczema). Photographs cannot replace in-person dermatological or trichoscopic consultations.
