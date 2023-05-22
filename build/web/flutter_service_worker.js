'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "2b99444343c1e53d1ee0a7e5e5adb805",
"assets/AssetManifest.smcbin": "93c8f7e4f057cf790a361ade40efb386",
"assets/assets/fonts/Segoe%2520UI%2520Bold%2520Italic.ttf": "676a12075e14377f6f44a3e29b4d72af",
"assets/assets/fonts/Segoe%2520UI%2520Bold.ttf": "65099f98c7cb19b3dac57b15a6a708cf",
"assets/assets/fonts/Segoe%2520UI%2520Italic.ttf": "5eb716ee36ae3ea66de512bcb63af3d8",
"assets/assets/fonts/Segoe%2520UI.ttf": "0e7e9a9b5c4abaadef7bc8f4e4574084",
"assets/assets/fonts/TwCenClassMTStd-Regular.otf": "ba1402e4ee00317d43a82881fd9237d6",
"assets/assets/fonts/TwCenMTStd-Bold.otf": "f1e56c2f214e428a66de0e7c5e9ae657",
"assets/assets/fonts/TwCenMTStd-BoldCond.otf": "34663f09217ac4916e9019755e8fb610",
"assets/assets/fonts/TwCenMTStd-ExtraBold.otf": "54a64f301a61573fadc09be082819318",
"assets/assets/fonts/TwCenMTStd-ExtraBoldCond.otf": "04db6150274ec07e3f81daef2e0be428",
"assets/assets/fonts/TwCenMTStd-Italic.otf": "06e89e5bfa6970ca12be957157346fdf",
"assets/assets/fonts/TwCenMTStd-Light.otf": "2c8622286a44972d1ba4eff9ef890a7a",
"assets/assets/fonts/TwCenMTStd-LightItalic.otf": "61777b46ddc41889cd5fc1634ce54452",
"assets/assets/fonts/TwCenMTStd-MediumCond.otf": "cae233caae8126deb685e2a1491834b0",
"assets/assets/fonts/TwCenMTStd-SemiMedium.otf": "816f4c10fc448021980ec83bd50d9825",
"assets/assets/fonts/TwCenMTStd-UltraBold.otf": "51c50a666509bda0858337d871b30b5b",
"assets/assets/fonts/TwCenMTStd-UltraBoldCond.otf": "5e849e65166e2ac44d23c9d21bfea523",
"assets/assets/fonts/TwCenMTStd-UltraBoldIt.otf": "c1c50fb83be23fa8ee8f415ad8a74134",
"assets/assets/fonts/TwCenMTStd.otf": "b7d5da0824d522d9d27a1896a12c3642",
"assets/assets/icons/contact/email.jpg": "26f680127094f5e2ce48e21c6b884c10",
"assets/assets/icons/contact/facebook.jpg": "7512e2fb82ead55a1144c4638ba61655",
"assets/assets/icons/contact/instagram.jpg": "c271cc6f3eedffbee426043c844af5f0",
"assets/assets/icons/contact/location.jpg": "858c7ca64c37b2a8dfe6579a02935c29",
"assets/assets/icons/contact/phone.jpg": "6ef310b1566b8993dce24216ba368e23",
"assets/assets/icons/contact/whatsapp.jpg": "3127f8e123315b47898b8e2ea59b5098",
"assets/assets/icons/homePage/1.jpg": "bf4697c8a59b6ef36bc5bfac8b880559",
"assets/assets/icons/homePage/11.jpg": "7f2ba48fe48a60e3ce5a153b115379b9",
"assets/assets/icons/homePage/12.jpg": "de88cb63c446a2fe99d84dc41785fd5d",
"assets/assets/icons/homePage/13.jpg": "935a29914868c158aef3cb5e210c5420",
"assets/assets/icons/homePage/14.jpg": "bf12b294420398655240de469761b910",
"assets/assets/icons/homePage/15.jpg": "f7e06f5049fc45253f472ebed84b2046",
"assets/assets/icons/homePage/facebook.jpg": "3b36fa9dbd669e7c5d464b3a562dcfe1",
"assets/assets/icons/homePage/instagram.jpg": "17736049dda4c30695b37039319c6337",
"assets/assets/icons/homePage/linkedin.jpg": "f6fa0c78959f580fc123dcb8541e370d",
"assets/assets/icons/homePage/logo2.jpg": "4fe276b91163a94ac0ffbf5aee8b3046",
"assets/assets/icons/homePage/s1.jpg": "41697005b7c92d2b0e0d34dd6746f38f",
"assets/assets/icons/homePage/s2.jpg": "ed855e86050022a427ea3fda21ac276b",
"assets/assets/icons/homePage/s3.jpg": "a75043dae95798fcf4ead309e6ad235f",
"assets/assets/icons/homePage/s4.jpg": "15384315c22ec3f1012e52dc00e88d2a",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A2%2520(10).jpg": "27d419ede0b60da6ca17d684e1c7f931",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A2%2520(11).jpg": "04168c136023a5e8d50f729b5ba04b6a",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A2%2520(3).jpg": "f7b18af13884e32f4f65a747c16354bb",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A2%2520(6).jpg": "df8e10385bb1fcf94aae4a892e77e7a3",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A2%2520(8).jpg": "a1432a64327ced51795cfb350c7aaaa4",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A2%2520(9).jpg": "fdcb44a4302aad744f37630810d5c7e5",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A3%2520(11).jpg": "bf12b294420398655240de469761b910",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A3%2520(16).jpg": "c99fa32b308e882308c987ee06201c1e",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A3%2520(18).jpg": "f1b75241a273876cf8f313e8b683a0f7",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A3%2520(4).jpg": "169853ac9b6dd8611a4c9304640e2f27",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A3%2520(5).jpg": "16e4ac59f3bb14371f8d85bc62e18d83",
"assets/assets/icons/photo_%25D9%25A2%25D9%25A0%25D9%25A2%25D9%25A3-%25D9%25A0%25D9%25A3-%25D9%25A1%25D9%25A4_%25D9%25A1%25D9%25A8-%25D9%25A4%25D9%25A6-%25D9%25A4%25D9%25A3%2520(9).jpg": "6ba86c05c0a9cedd11e0551ee527ddcb",
"assets/assets/images/blog/b1.jpg": "397ee72d65c171d22d19e363c9c87e4e",
"assets/assets/images/blog/b2.jpg": "dbe9c5fffa5d1ac8dcb3e5f1041e150b",
"assets/assets/images/blog/b3.jpg": "1eb40b06cceed12bf1cdd7d4f6a9f9f3",
"assets/assets/images/blog/b4.jpg": "137307e65c21cbe6f66bd9c71c5a8720",
"assets/assets/images/blog/b5.jpg": "4f34167f3bd2c1139a835e371e033727",
"assets/assets/images/contact/googlemaps.jpg": "987d49677a7692836062a82ca9bf943c",
"assets/assets/images/homePage/apartment.jpg": "a7995c8fc1dfecc913c3bbfbccc0b7f7",
"assets/assets/images/homePage/bishoo.jpg": "9ba52f13a3c4578de739d717e6231def",
"assets/assets/images/homePage/c1.jpg": "ea0b61478b4d59ff4c4906e7a05c6d8a",
"assets/assets/images/homePage/c2.jpg": "9666c0eec386a2f673eb4c0be961e0c0",
"assets/assets/images/homePage/c3.jpg": "cb819a16cc2a8683f7cf12e9723f1410",
"assets/assets/images/homePage/c4.jpg": "612e03f19ab1e545750a09df53a7d368",
"assets/assets/images/homePage/c5.jpg": "b3bf8382420aad5354e641b5fec626d5",
"assets/assets/images/homePage/homepage1.jpg": "6901356e670efe2adfe0bd73f252e16b",
"assets/assets/images/homePage/homepage2.jpg": "8536294d12c4aa27b50122695b15e60b",
"assets/assets/images/homePage/homepage3.jpg": "9b1e9a46c98a796f5ba5d495544a233a",
"assets/assets/images/homePage/homepage4.jpg": "370aa629d5a7d8365971cee88f9e7003",
"assets/assets/images/homePage/hotel.jpg": "cc03bc7ca9f54e298e7ee9e98bc5808a",
"assets/assets/images/homePage/latenews1.jpg": "8adf1b36d4dae6bcb0b3987304af751c",
"assets/assets/images/homePage/latenews2.jpg": "62023f9b892632eebdab96b9a7472733",
"assets/assets/images/homePage/latenews3.jpg": "40d46420dee821d585e3bddf2493702a",
"assets/assets/images/homePage/logo.jpg": "bf4697c8a59b6ef36bc5bfac8b880559",
"assets/assets/images/homePage/office.jpg": "fab91ff4d65ba00dd94f2d8311066047",
"assets/assets/images/homePage/salon.jpg": "3defe37b666763273691c88f631dcfba",
"assets/assets/images/projects/p1.jpg": "2ffb8ad5b72851b58619f351b84cd5f8",
"assets/assets/images/projects/p2.jpg": "3613a83feb59cda4d55a915dd333e06b",
"assets/assets/images/projects/p3.jpg": "487b3d7b41d18a17816118535380ca18",
"assets/assets/images/projects/p4.jpg": "0e2345df8d2b36dba0f3d3d816dd78a5",
"assets/assets/images/projects/p5.jpg": "073d3541d48c5950e78b67ffde8832cf",
"assets/assets/images/projects/p6.jpg": "c00491bba7496aa6bf0a35e5f8cdd83c",
"assets/assets/images/see_more/a1.jpg": "eea75dbdc4f3561259f5d9c56a368459",
"assets/assets/images/see_more/a11.jpg": "2dc4611164b697b83f54604a18688c44",
"assets/assets/images/see_more/a2.jpg": "eb907ac883aeb2f1ae50601b614e4cdf",
"assets/assets/images/see_more/a22.jpg": "32d892c33af563015d4d8c46cab1af23",
"assets/assets/images/see_more/a3.jpg": "061f4fbd185fe4d2ad683f937512f9c1",
"assets/assets/images/see_more/a33.jpg": "42896002776819998e070644bc0e3968",
"assets/assets/images/see_more/a4.jpg": "ffea973666556806e941e17801cfd086",
"assets/assets/images/see_more/a44.jpg": "13ed85c049304108c51109c21929132b",
"assets/assets/images/see_more/d1.jpg": "348b95841f9eb8aa18d3833c7c42e638",
"assets/assets/images/see_more/d2.jpg": "39cd08972eed36ea978a63f101dfa3c4",
"assets/assets/images/see_more/d3.jpg": "543c49b509c02d3c62ab44c4f664846d",
"assets/assets/images/see_more/d4.jpg": "595656cdec03dec14bd8f6fa4b699e71",
"assets/assets/images/see_more/p1.jpg": "c72665d971470235b9adf495ca5dc96b",
"assets/assets/images/see_more/p2.jpg": "b3617a4363ee5773a4e38cecd297e4d3",
"assets/assets/images/see_more/p3.jpg": "1ca2ba8e2ecd1571d9b3a67b97c08023",
"assets/assets/images/see_more/p4.jpg": "c0e77e1907ec854001b21d6082c1436f",
"assets/assets/images/see_more/s1.jpg": "fced57ebf39079bd0a2db5a6644d65fa",
"assets/assets/images/see_more/s2.jpg": "394ffc62ed3805ec180bf65478999719",
"assets/assets/images/see_more/s3.jpg": "c1b0d66c70906785e32fe12c12f7bcd9",
"assets/assets/images/see_more/wc1.jpg": "bda45997ee492912c8d75cf244950440",
"assets/assets/images/see_more/wc2.jpg": "94fe269ea6006b63d17e5659ef0a070e",
"assets/assets/images/see_more/wc3.jpg": "e7eaf336d2798c1eb8e0c7ae9d86a1f0",
"assets/assets/images/see_more/wc4.jpg": "2345a6256fd640a73ee6144bea236109",
"assets/assets/images/services/s1.jpg": "b54f8030228bd976280524d3b3687087",
"assets/assets/images/services/s2.jpg": "a4bb4d1eb7b97050c4bf4ee4b67dc04a",
"assets/assets/images/services/s3.jpg": "ea701ca2a475f709fe69d6b983d391a9",
"assets/assets/images/services/s4.jpg": "86762428ede662ff66a9f29999ee5e60",
"assets/FontManifest.json": "36c04e79a19ac96b19a061c5f3ebc7c3",
"assets/fonts/MaterialIcons-Regular.otf": "a84ca49bdfa475097a7b4e901f06223d",
"assets/NOTICES": "32d1ca61c3a22ad286d751a8b3d2705e",
"assets/packages/comment_box/assets/img/userpic.jpg": "158db63eb82bd6445b7fd976fe3ecefb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/gender_picker/assets/images/female.png": "93c67e67ee8656ee2f13b917a815ec0a",
"assets/packages/gender_picker/assets/images/male.png": "b544146a8e95908f097fe86343f9140b",
"assets/packages/gender_picker/assets/images/other.png": "4b5edfe11e630dbd98a09e04b2e35269",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "6317d664e801b0dbb0c08fb9b3b79533",
"/": "6317d664e801b0dbb0c08fb9b3b79533",
"main.dart.js": "6283986ae4ecdc9d296265c728c0233e",
"manifest.json": "00cf0333d4cc0ef49de136880091d6ee",
"version.json": "389a6e6e6f34312743ca5f36467c84b5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
