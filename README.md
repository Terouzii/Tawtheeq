# Sijil Tawtheeq

مشروع Web3 لتوثيق الشهادات باستخدام العقد الذكي على Polygon Mumbai، ورفع الشهادات على IPFS، مع واجهة Next.js.

## المهام المنجزة
- [x] عقد ذكي مكتوب ومجرب
- [x] سكربت نشر باستخدام Hardhat
- [x] دعم بيئة Polygon Mumbai
- [x] مثال لملف .env

## الأوامر الأساسية
```bash
npm install        # لتثبيت الحزم
npx hardhat compile
npx hardhat run scripts/deploy.js --network mumbai
```

## إعداد متغيرات البيئة
أنشئ ملف `.env` بناء على `.env.example` وأضف القيم التالية:

```env
PRIVATE_KEY=مفتاح_محفظتك
RPC_URL=https://polygon-mumbai.infura.io/v3/your_project_id
```
