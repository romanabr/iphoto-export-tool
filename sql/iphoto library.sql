-- Оригиналы фотографий
select m.modelId, m.uuid, m.originalVersionUuid, m.imagePath, m.fileSize 
from RKMaster m; 

-- Версия фото
select v.modelId, v.uuid, v.masterUuid, v.momentUuid, v.* from RKVersion v;

-- Связь версии и альбома count = 21691
select av.modelId, av.versionId, av.albumId from RKAlbumVersion av;

-- Альбом
select modelId, uuid, name, folderUuid, createDate from RKAlbum order by createDate;

-- Папки (дерево бывших событий)
select * from RKFolder; 



select * from RKAlbum where uuid='QL6ycD0TTZCKivhhpyxTvg';
select * from  RKFolder where uuid= '0B2C8CD0-173D-4874-A97B-BE9083E87298';
select count(*) from RKMaster; -- Оригиналы фотографий
select DISTINCT subtype, count(*) from RKMaster GROUP BY subtype;
select * from RKMaster where subtype = 'GIFST';
select * from RKFolder_integerNote;
select * from RKMomentCollection;
select * from RKVersion;
select * from RKAlbum;
select * from RKMoment;
select * from RKVersion where momentUuid='kVi%Y87rQdSf5XZIT0ovMw';

-- Связь Версия - Момент (rids) тут 1973 момента 
select DISTINCT  rids from RKVERSION_MOMENTUUID_RIDINDEX;



select * from RKVersionGroup;
select * from RKGroupsForVersions;