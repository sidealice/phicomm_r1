.class public Lcn/kuwo/autosdk/bean/Music;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x374ff4113a05d588L


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public artistId:J

.field public checked:Z

.field public createDate:Lcn/kuwo/autosdk/q;

.field public downQuality:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

.field public downSize:J

.field public duration:I

.field private eq:Z

.field public fileFormat:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field private flac:Z

.field public hasKalaok:I

.field public hasMv:Z

.field public hot:I

.field public localFileState:Lcn/kuwo/autosdk/bean/Music$LocalFileState;

.field public mvIconUrl:Ljava/lang/String;

.field public mvQuality:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public playFail:Z

.field public psrc:Ljava/lang/String;

.field private resourceCollection:Ljava/util/Collection;

.field public rid:J

.field public source:Ljava/lang/String;

.field private storageId:J

.field public tag:Ljava/lang/String;

.field public trend:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->tag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->mvIconUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->source:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/autosdk/q;

    invoke-direct {v0}, Lcn/kuwo/autosdk/q;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->createDate:Lcn/kuwo/autosdk/q;

    sget-object v0, Lcn/kuwo/autosdk/bean/Music$LocalFileState;->NOT_CHECK:Lcn/kuwo/autosdk/bean/Music$LocalFileState;

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->localFileState:Lcn/kuwo/autosdk/bean/Music$LocalFileState;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->fileFormat:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_AUTO:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->downQuality:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    return-void
.end method


# virtual methods
.method public Contain(Lcn/kuwo/autosdk/bean/Music;)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    iget-wide v2, p1, Lcn/kuwo/autosdk/bean/Music;->rid:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p1, Lcn/kuwo/autosdk/bean/Music;->rid:J

    iget-wide v4, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v0, p1, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lcn/kuwo/autosdk/bean/Music;->rid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v0, p1, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public addResource(Lcn/kuwo/autosdk/bean/MusicQuality;ILcn/kuwo/autosdk/bean/MusicFormat;I)Z
    .locals 1

    new-instance v0, Lcn/kuwo/autosdk/bean/NetResource;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/kuwo/autosdk/bean/NetResource;-><init>(Lcn/kuwo/autosdk/bean/MusicQuality;ILcn/kuwo/autosdk/bean/MusicFormat;I)V

    invoke-virtual {p0, v0}, Lcn/kuwo/autosdk/bean/Music;->addResource(Lcn/kuwo/autosdk/bean/NetResource;)Z

    move-result v0

    return v0
.end method

.method public addResource(Lcn/kuwo/autosdk/bean/NetResource;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcn/kuwo/autosdk/bean/NetResource;->isEQ()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcn/kuwo/autosdk/bean/Music;->eq:Z

    :cond_3
    invoke-virtual {p1}, Lcn/kuwo/autosdk/bean/NetResource;->isFLAC()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcn/kuwo/autosdk/bean/Music;->flac:Z

    :cond_4
    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/NetResource;

    invoke-virtual {v0, p1}, Lcn/kuwo/autosdk/bean/NetResource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public clone()Lcn/kuwo/autosdk/bean/Music;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/autosdk/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/bean/NetResource;->clone()Lcn/kuwo/autosdk/bean/NetResource;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/autosdk/bean/Music;->clone()Lcn/kuwo/autosdk/bean/Music;

    move-result-object v0

    return-object v0
.end method

.method public equalsEx(Lcn/kuwo/autosdk/bean/Music;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p1, Lcn/kuwo/autosdk/bean/Music;->rid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p1, Lcn/kuwo/autosdk/bean/Music;->rid:J

    iget-wide v4, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getBestResource()Lcn/kuwo/autosdk/bean/NetResource;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/NetResource;

    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget v3, v1, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    iget v4, v0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    if-ge v3, v4, :cond_1

    move-object v1, v0

    goto :goto_1
.end method

.method public getBestResource(Lcn/kuwo/autosdk/bean/MusicQuality;)Lcn/kuwo/autosdk/bean/NetResource;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    invoke-virtual {v3}, Lcn/kuwo/autosdk/bean/MusicQuality;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcn/kuwo/autosdk/bean/MusicQuality;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_1

    if-eqz v1, :cond_3

    iget v3, v1, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    iget v4, v0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    if-ge v3, v4, :cond_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public getInfoFromDatabase(Landroid/database/Cursor;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/autosdk/bean/Music;->setStorageId(J)V

    const-string v2, "rid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    const-string v2, "artistid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->artistId:J

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcn/kuwo/autosdk/bean/Music;->duration:I

    const-string v2, "hasmv"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcn/kuwo/autosdk/bean/Music;->hasMv:Z

    const-string v2, "mvquality"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    const-string v2, "haskalaok"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcn/kuwo/autosdk/bean/Music;->hasKalaok:I

    const-string v2, "downsize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->downSize:J

    const-string v2, "downquality"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->downQuality:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    const-string v2, "filepath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    const-string v2, "filesize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->fileSize:J

    const-string v2, "fileformat"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->fileFormat:Ljava/lang/String;

    const-string v2, "resource"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const-string v2, "resource"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/kuwo/autosdk/bean/Music;->parseResourceStringFromDatabase(Ljava/lang/String;)I

    :cond_0
    const-string v2, "createtime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v2, "createtime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcn/kuwo/autosdk/q;

    invoke-direct {v2}, Lcn/kuwo/autosdk/q;-><init>()V

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->createDate:Lcn/kuwo/autosdk/q;

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lcn/kuwo/autosdk/q;

    invoke-direct {v3, v2}, Lcn/kuwo/autosdk/q;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcn/kuwo/autosdk/bean/Music;->createDate:Lcn/kuwo/autosdk/q;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v2, Lcn/kuwo/autosdk/q;

    invoke-direct {v2}, Lcn/kuwo/autosdk/q;-><init>()V

    iput-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->createDate:Lcn/kuwo/autosdk/q;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getMusicContentValues(J)Landroid/content/ContentValues;
    .locals 5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "rid"

    iget-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "listid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "name"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artist"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artistid"

    iget-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->artistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "album"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "duration"

    iget v2, p0, Lcn/kuwo/autosdk/bean/Music;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "hot"

    iget v2, p0, Lcn/kuwo/autosdk/bean/Music;->hot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "source"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->source:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-virtual {p0}, Lcn/kuwo/autosdk/bean/Music;->getResourceStringForDatabase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hasmv"

    iget-boolean v0, p0, Lcn/kuwo/autosdk/bean/Music;->hasMv:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mvquality"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "haskalaok"

    iget v2, p0, Lcn/kuwo/autosdk/bean/Music;->hasKalaok:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "downsize"

    iget-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->downSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "downquality"

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->downQuality:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filepath"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fileformat"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->fileFormat:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filesize"

    iget-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "createtime"

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->createDate:Lcn/kuwo/autosdk/q;

    invoke-virtual {v2}, Lcn/kuwo/autosdk/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->downQuality:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    invoke-virtual {v0}, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getResource(Lcn/kuwo/autosdk/bean/MusicFormat;)Lcn/kuwo/autosdk/bean/NetResource;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/autosdk/bean/NetResource;->format:Lcn/kuwo/autosdk/bean/MusicFormat;

    if-ne v3, p1, :cond_1

    if-eqz v1, :cond_3

    iget v3, v1, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    iget v4, v0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    if-ge v3, v4, :cond_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public getResource(Lcn/kuwo/autosdk/bean/MusicQuality;)Lcn/kuwo/autosdk/bean/NetResource;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    if-ne v3, p1, :cond_1

    if-eqz v1, :cond_3

    iget v3, v1, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    iget v4, v0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    if-ge v3, v4, :cond_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public getResourceCollection()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    return-object v0
.end method

.method public getResourceStringForDatabase()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    invoke-virtual {v3}, Lcn/kuwo/autosdk/bean/MusicQuality;->getDiscribe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/kuwo/autosdk/bean/NetResource;->format:Lcn/kuwo/autosdk/bean/MusicFormat;

    invoke-virtual {v3}, Lcn/kuwo/autosdk/bean/MusicFormat;->getDiscribe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcn/kuwo/autosdk/bean/NetResource;->size:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getStorageId()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/autosdk/bean/Music;->storageId:J

    return-wide v0
.end method

.method public hasHighMv()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/autosdk/bean/Music;->hasMv:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v4, v2, v1

    const-string v5, "MP4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasLowMv()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/autosdk/bean/Music;->hasMv:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v4, v2, v1

    const-string v5, "MP4L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCodeEx()I
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEQ()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/bean/Music;->eq:Z

    return v0
.end method

.method public isFLAC()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/bean/Music;->flac:Z

    return v0
.end method

.method public isLocalFile()Z
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseResourceStringFromDatabase(Ljava/lang/String;)I
    .locals 10

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x3b

    invoke-static {p1, v0}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    const/16 v6, 0x2e

    invoke-static {v2, v6}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    aget-object v6, v2, v1

    invoke-static {v6}, Lcn/kuwo/autosdk/bean/MusicQuality;->getQualityFromDiscribe(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/MusicQuality;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-static {v7}, Lcn/kuwo/autosdk/bean/MusicFormat;->getFormatFromDiscribe(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/MusicFormat;

    move-result-object v7

    const/4 v8, 0x1

    :try_start_0
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v9, Lcn/kuwo/autosdk/bean/NetResource;

    invoke-direct {v9, v6, v8, v7, v2}, Lcn/kuwo/autosdk/bean/NetResource;-><init>(Lcn/kuwo/autosdk/bean/MusicQuality;ILcn/kuwo/autosdk/bean/MusicFormat;I)V

    invoke-virtual {p0, v9}, Lcn/kuwo/autosdk/bean/Music;->addResource(Lcn/kuwo/autosdk/bean/NetResource;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public parseResourceStringFromQuku(Ljava/lang/String;)I
    .locals 12

    const/high16 v11, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v0, 0x3b

    invoke-static {p1, v0}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    move v3, v1

    :goto_1
    if-lt v4, v6, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    aget-object v0, v5, v4

    const/16 v2, 0x2c

    invoke-static {v0, v2}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v7, 0x4

    if-ne v2, v7, :cond_5

    aget-object v2, v0, v1

    invoke-static {v2}, Lcn/kuwo/autosdk/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Lcn/kuwo/autosdk/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v8}, Lcn/kuwo/autosdk/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v0, v0, v9

    invoke-static {v0}, Lcn/kuwo/autosdk/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Lcn/kuwo/autosdk/bean/MusicQuality;->getQualityFromDiscribe4Quku(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/MusicQuality;

    move-result-object v10

    invoke-static {v7}, Lcn/kuwo/autosdk/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-static {v8}, Lcn/kuwo/autosdk/bean/MusicFormat;->getFormatFromDiscribe4Quku(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/MusicFormat;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v8, "KB"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "(?i)kb"

    const-string v8, ""

    invoke-virtual {v9, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    :goto_3
    new-instance v8, Lcn/kuwo/autosdk/bean/NetResource;

    invoke-direct {v8, v10, v0, v7, v2}, Lcn/kuwo/autosdk/bean/NetResource;-><init>(Lcn/kuwo/autosdk/bean/MusicQuality;ILcn/kuwo/autosdk/bean/MusicFormat;I)V

    invoke-virtual {p0, v8}, Lcn/kuwo/autosdk/bean/Music;->addResource(Lcn/kuwo/autosdk/bean/NetResource;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MB"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "(?i)mb"

    const-string v8, ""

    invoke-virtual {v9, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    mul-float/2addr v2, v11

    mul-float/2addr v2, v11

    float-to-int v2, v2

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v8, "B"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "(?i)b"

    const-string v8, ""

    invoke-virtual {v9, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    float-to-int v2, v2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public setLocalFileExist(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/bean/Music$LocalFileState;->EXIST:Lcn/kuwo/autosdk/bean/Music$LocalFileState;

    :goto_0
    iput-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->localFileState:Lcn/kuwo/autosdk/bean/Music$LocalFileState;

    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/autosdk/bean/Music$LocalFileState;->NOT_EXIST:Lcn/kuwo/autosdk/bean/Music$LocalFileState;

    goto :goto_0
.end method

.method public setResourceCollection(Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/autosdk/bean/Music;->resourceCollection:Ljava/util/Collection;

    return-void
.end method

.method public setStorageId(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcn/kuwo/autosdk/bean/Music;->storageId:J

    goto :goto_0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Artist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Rid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vaild()Z
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/Music;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
