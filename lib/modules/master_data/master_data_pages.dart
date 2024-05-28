import 'package:boonda_mitra/config/pages/auth_middleware.dart';
import 'package:boonda_mitra/modules/master_data/absensi/absensi_bindings.dart';
import 'package:boonda_mitra/modules/master_data/absensi/absensi_page.dart';
import 'package:boonda_mitra/modules/master_data/aktivitas/aktivitas_bindings.dart';
import 'package:boonda_mitra/modules/master_data/aktivitas/aktivitas_page.dart';
import 'package:boonda_mitra/modules/master_data/anak/add_data_pertumbuhan/add_data_pertumbuhan_bindings.dart';
import 'package:boonda_mitra/modules/master_data/anak/add_data_pertumbuhan/add_data_pertumbuhan_page.dart';
import 'package:boonda_mitra/modules/master_data/anak/detail_anak/detail_anak_bindings.dart';
import 'package:boonda_mitra/modules/master_data/anak/detail_anak/detail_anak_page.dart';
import 'package:boonda_mitra/modules/master_data/anak/detail_pertumbuhan/detail_pertumbuhan_bindings.dart';
import 'package:boonda_mitra/modules/master_data/anak/detail_pertumbuhan/detail_pertumbuhan_page.dart';
import 'package:boonda_mitra/modules/master_data/anak/list_children/list_children_bindings.dart';
import 'package:boonda_mitra/modules/master_data/anak/list_children/list_children_page.dart';
import 'package:boonda_mitra/modules/master_data/anak/pilih_children/pilih_children_bindings.dart';
import 'package:boonda_mitra/modules/master_data/anak/pilih_children/pilih_children_page.dart';
import 'package:boonda_mitra/modules/master_data/anak/z_score/z_score_bindings.dart';
import 'package:boonda_mitra/modules/master_data/anak/z_score/z_score_page.dart';
import 'package:boonda_mitra/modules/master_data/cabang/cabang_bindings.dart';
import 'package:boonda_mitra/modules/master_data/cabang/cabang_page.dart';
import 'package:boonda_mitra/modules/master_data/fasilitas/fasilitas_bindings.dart';
import 'package:boonda_mitra/modules/master_data/fasilitas/fasilitas_page.dart';
import 'package:boonda_mitra/modules/master_data/galeri/galeri_bindings.dart';
import 'package:boonda_mitra/modules/master_data/galeri/galeri_page.dart';
import 'package:boonda_mitra/modules/master_data/harga/harga_bindings.dart';
import 'package:boonda_mitra/modules/master_data/harga/harga_page.dart';
import 'package:boonda_mitra/modules/master_data/jam_operasional/jam_operasional_bindings.dart';
import 'package:boonda_mitra/modules/master_data/jam_operasional/jam_operasional_page.dart';
import 'package:boonda_mitra/modules/master_data/kelas/kelas_bindings.dart';
import 'package:boonda_mitra/modules/master_data/kelas/kelas_page.dart';
import 'package:boonda_mitra/modules/master_data/kuota/kuota_bindings.dart';
import 'package:boonda_mitra/modules/master_data/kuota/kuota_page.dart';
import 'package:boonda_mitra/modules/master_data/live_momment/live_momment_bindings.dart';
import 'package:boonda_mitra/modules/master_data/live_momment/live_momment_page.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/detail_orang_tua/detail_orang_tua_bindings.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/detail_orang_tua/detail_orang_tua_page.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/list/orang_tua_bindings.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/list/orang_tua_page.dart';
import 'package:boonda_mitra/modules/master_data/pengajar/pengajar_bindings.dart';
import 'package:boonda_mitra/modules/master_data/pengajar/pengajar_page.dart';
import 'package:boonda_mitra/modules/master_data/promo/create_promo/create_promo_bindings.dart';
import 'package:boonda_mitra/modules/master_data/promo/create_promo/create_promo_page.dart';
import 'package:boonda_mitra/modules/master_data/promo/detail_promo/detail_promo_bindings.dart';
import 'package:boonda_mitra/modules/master_data/promo/detail_promo/detail_promo_page.dart';
import 'package:boonda_mitra/modules/master_data/promo/list/promo_bindings.dart';
import 'package:boonda_mitra/modules/master_data/promo/list/promo_page.dart';
import 'package:get/get.dart';

class MasterDataPages {
  static const ortu = "/orang-tua";
  static const ortuDetail = "/orang-tua-detail";

  static const detailAnak = "/detail-anak";
  static const infoZScore = "/info-z-score";
  static const addDataPertumbuhan = "/add-data-pertumbuhan";
  static const detailPertumbuhan = "/detail-pertumbuhan";
  static const listChildren = "/list-children";
  static const pilihChildren = "/pilih-children";
  static const pengajar = "/pengajar";
  static const absensi = "/absensi";
  static const kelas = "/kelas";
  static const cabang = "/cabang";
  static const jamOperasional = "/jam-operasional";
  static const harga = "/harga";
  static const galery = "/galery";
  static const liveMomment = "/live-momment";
  static const kuota = "/kuota";
  static const promo = "/promo";
  static const detailPromo = "/promo-detail";
  static const createPromo = "/promo-create";
  static const aktivitas = "/aktivitas";
  static const fasilitas = "/fasilitas";
  static List<GetPage> get pages => [
        GetPage(
            name: ortu,
            page: () => const OrangTuaPage(),
            middlewares: [AuthMiddleware()],
            binding: OrangTuaBindings()),
        GetPage(
            name: ortuDetail,
            page: () => const DetailOrangTuaPage(),
            middlewares: [AuthMiddleware()],
            binding: DetailOrangTuaBindings()),
        GetPage(
            name: listChildren,
            page: () => const ListChildrenPage(),
            binding: ListChildrenBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: pilihChildren,
            page: () => const PilihChildrenPage(),
            binding: PilihChildrenBindings(),
            fullscreenDialog: true,
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: detailAnak,
            page: () => const DetailAnakPage(),
            binding: DetailAnakBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: addDataPertumbuhan,
            page: () => const AddDataPertumbuhanPage(),
            binding: AddDataPertumbuhanBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: detailPertumbuhan,
            page: () => const DetailPertumbuhanPage(),
            binding: DetailPertumbuhanBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: infoZScore,
            page: () => const ZScorePage(),
            binding: ZScoreBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: pengajar,
            page: () => const PengajarPage(),
            middlewares: [AuthMiddleware()],
            binding: PengajarBindings()),
        GetPage(
            name: absensi,
            page: () => const AbsensiPage(),
            middlewares: [AuthMiddleware()],
            binding: AbsensiBindings()),
        GetPage(
            name: kelas,
            page: () => const KelasPage(),
            middlewares: [AuthMiddleware()],
            binding: KelasBindings()),
        GetPage(
            name: cabang,
            page: () => const CabangPage(),
            middlewares: [AuthMiddleware()],
            binding: CabangBindings()),
        GetPage(
            name: jamOperasional,
            page: () => const JamOperasionalPage(),
            middlewares: [AuthMiddleware()],
            binding: JamOperasionalBindings()),
        GetPage(
            name: harga,
            page: () => const HargaPage(),
            middlewares: [AuthMiddleware()],
            binding: HargaBindings()),
        GetPage(
            name: galery,
            page: () => const GaleriPage(),
            middlewares: [AuthMiddleware()],
            binding: GaleriBindings()),
        GetPage(
            name: liveMomment,
            page: () => const LiveMommentPage(),
            middlewares: [AuthMiddleware()],
            binding: LiveMommentBindings()),
        GetPage(
            name: kuota,
            page: () => const KuotaPage(),
            middlewares: [AuthMiddleware()],
            binding: KuotaBindings()),
        GetPage(
            name: promo,
            page: () => const PromoPage(),
            middlewares: [AuthMiddleware()],
            binding: PromoBindings()),
        GetPage(
            name: detailPromo,
            page: () => const DetailPromoPage(),
            middlewares: [AuthMiddleware()],
            binding: DetailPromoBindings()),
        GetPage(
            name: createPromo,
            page: () => const CreatePromoPage(),
            middlewares: [AuthMiddleware()],
            binding: CreatePromoBindings()),
        GetPage(
            name: aktivitas,
            page: () => const AktivitasPage(),
            middlewares: [AuthMiddleware()],
            binding: AktivitasBindings()),
        GetPage(
            name: fasilitas,
            page: () => const FasilitasPage(),
            middlewares: [AuthMiddleware()],
            binding: FasilitasBindings()),
      ];
}
