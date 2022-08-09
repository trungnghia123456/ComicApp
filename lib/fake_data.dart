import 'package:manga_app_project/model/category.dart';
import 'package:manga_app_project/model/manga.dart';

//category list
Category action = Category(categoryId: '1', type: 'action');
Category mystery = Category(categoryId: '2', type: 'mystery');
Category comedy = Category(categoryId: '3', type: 'comedy');
Category adventure = Category(categoryId: '4', type: 'adventure');
Category fantasy = Category(categoryId: '5', type: 'fantasy');
Category shounen = Category(categoryId: '6', type: 'shounen');
Category romance = Category(categoryId: '7', type: 'romance');
Category drama = Category(categoryId: '8', type: 'romance');

//manga list

Manga overLord = Manga(
    id: '1',
    title: 'OverLord',
    synopsis:
        'Câu chuyện bắt đầu tại Yggdrasil, một game online từng nổi tiếng sắp phải đóng cửa trong những ngày cuối. Thủ lĩnh Momonga quyết định ở lại cho đến tận những giây phút cuối với trò chơi yêu thích của cậu ta. Ngạc nhiên, server không đóng lại và Momonga bị mắc kẹt trong bộ xương của nhân vật ở thế giới này. "Overlord mạnh mẽ" giờ đây tiếp tục đi khám phá thế giới mới và đối mặt với những thử thách'
        ' Không gia đình, bạn bè, vị trí trong xã hội, người đàn ông bình thường này sẽ chiến đấu hết sức để thống trị thế giới mới mà trò chơi đã trở thành',
    imageLink:
        'http://st.ntcdntempv3.com/data/comics/98/kham-pha-the-gioi-game.jpg',
    category: [action, mystery, comedy],
    chapter: 30);
Manga hitman = Manga(
    id: '2',
    title: 'Hitman',
    synopsis:
        'Kenzaki Ryuunosuke có niềm đam mê mãnh liệt với manga, anh quyết định tham gia và làm một biên tập viên, anh bắt gặp nữ chính của chúng ta cũng trong buổi phỏng vấn đó. Anh được nhận vào làm và anh nhận ra trong này khá là khác biệt, tổng biên tập thì cứ nói cty sắp phá sản, lúc anh vào thì người hướng dẫn đi du lịch nên họ nói anh cứ thoải mãi, có người gọi điện đến hỏi về việc in ấn thì lại nói xấu họ, anh quyết định bỏ qua những lời nói đó và đi gặp khách hàng, bất ngờ thay đó lại là nữ chính người đã gặp cậu ở buổi thử việc. Một câu truyện nói về giới biên tập viên và các mangaka chứa đầy những cung bậc cảm xúc,những cuộc chiến gay cấn giữ anh với những nhà xuất bản khác, hãy cũng đọc và khám phá nó nào~ Và bộ này chung tác giả với bộ Fuuka đóa nha :3',
    imageLink: 'http://st.ntcdntempv3.com/data/comics/69/hitman.jpg',
    category: [drama, romance, comedy],
    chapter: 31);
Manga freesia = Manga(
    id: '3',
    title: 'FREESIA',
    synopsis:
        'Freesia lấy bối cảnh một xã hội Nhật Bản "khác" đang trong chiến tranh và đã thông qua luật hợp pháp hóa các vụ giết người trả thù. Nếu ai đó giết người thân yêu của bạn, bạn sẽ có thể hợp pháp "trả thù".Đây là trang giới thiệu manga một cách nghiệp dư',
    imageLink:
        'http://st.ntcdntempv3.com/data/comics/154/ta-nhan-duoc-vat-pham-than-thoai.jpg',
    category: [action, mystery, comedy],
    chapter: 57);
Manga marteialPeak = Manga(
    id: '4',
    title: 'VÕ LUYỆN ĐỈNH PHONG',
    synopsis:
        'Võ đạo đỉnh phong, là cô độc, là tịch mịch, là dài đằng đẵng cầu tác, là cao xử bất thắng hàn\nPhát triển trong nghịch cảnh, cầu sinh nơi tuyệt địa, bất khuất không buông tha, mới có thể có thể phá võ chi cực đạo.\nLăng Tiêu các thí luyện đệ tử kiêm quét rác gã sai vặt Dương Khai ngẫu lấy được một bản vô tự hắc thư, từ nay về sau đạp vào dài đằng đẵng võ đạo.',
    imageLink:
        'http://st.ntcdntempv3.com/data/comics/32/vo-luyen-dinh-phong.jpg',
    category: [action, fantasy],
    chapter: 2764);
Manga destinyLove = Manga(
    id: '5',
    title: 'LẠN KHA KỲ DUYÊN  ',
    synopsis:
        'Lạn Kha Kỳ Duyên là bộ tiên hiệp vô cùng thích hợp với những độc giả yêu thích cái thiện, đặc biệt có tác dụng chữa trị tâm hồn của những độc giả vừa tu ma xong\nChuyện xưa kể rằng, có chàng tiều phu đốn củi trên núi Lạn Kha, tình cờ nhìn thấy hai ông lão đang đánh cờ. Chàng say mê đứng xem cả buổi trời, đến khi được một ông lão nhắc nhở chàng mới quay trở về làng. Thế nhưng cảnh còn người mất, hoá ra chỉ xem cờ một lúc đã mất sáu mươi năm…\nĐây chính là sự tích về bàn cờ Lạn Kha.',
    imageLink: 'http://st.ntcdntempv3.com/data/comics/221/lang-tien-ky-dam.jpg',
    category: [mystery, romance],
    chapter: 200);
Manga seoulPandemic = Manga(
    id: '6',
    title: 'ĐẠI DỊCH SEOUL',
    synopsis:
        'Một bệnh dịch bí ẩn đột nhiên xuất hiện tại Seoul, tốc độ lây lan của nó đáng sợ đến mức chỉ cần chạm nhẹ cũng sẽ bị lây nhiễm và vong mạng ngay lập tức! Liệu con người sẽ phải đối mặt và tự tìm cách sống sót trước thảm họa này thế nào đây?!',
    imageLink: 'http://st.ntcdntempv3.com/data/comics/205/dai-dich-seoul.jpg',
    category: [action, drama],
    chapter: 42);

List<Manga> mangas = [
  overLord,
  hitman,
  freesia,
  marteialPeak,
  seoulPandemic,
  destinyLove
];
