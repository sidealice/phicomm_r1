.class public Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;
.super Ljava/lang/Object;
.source "AudioSecondList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/audio/bean/AudioSecondList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;,
        Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;
    }
.end annotation


# instance fields
.field private album_intro:Ljava/lang/String;

.field private album_tags:Ljava/lang/String;

.field private album_title:Ljava/lang/String;

.field private announcer:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;

.field private cover_url_large:Ljava/lang/String;

.field private cover_url_middle:Ljava/lang/String;

.field private cover_url_small:Ljava/lang/String;

.field private created_at:J

.field private favorite_count:I

.field private id:I

.field private include_track_count:I

.field private is_finished:I

.field private last_uptrack:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;

.field private play_count:I

.field private updated_at:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum_intro()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->album_intro:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum_tags()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->album_tags:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum_title()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->album_title:Ljava/lang/String;

    return-object v0
.end method

.method public getAnnouncer()Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->announcer:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;

    return-object v0
.end method

.method public getCover_url_large()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->cover_url_large:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_url_middle()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->cover_url_middle:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_url_small()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->cover_url_small:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()J
    .locals 2

    .line 293
    iget-wide v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->created_at:J

    return-wide v0
.end method

.method public getFavorite_count()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->favorite_count:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->id:I

    return v0
.end method

.method public getInclude_track_count()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->include_track_count:I

    return v0
.end method

.method public getIs_finished()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->is_finished:I

    return v0
.end method

.method public getLast_uptrack()Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->last_uptrack:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;

    return-object v0
.end method

.method public getPlay_count()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->play_count:I

    return v0
.end method

.method public getUpdated_at()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->updated_at:J

    return-wide v0
.end method

.method public setAlbum_intro(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->album_intro:Ljava/lang/String;

    return-void
.end method

.method public setAlbum_tags(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->album_tags:Ljava/lang/String;

    return-void
.end method

.method public setAlbum_title(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->album_title:Ljava/lang/String;

    return-void
.end method

.method public setAnnouncer(Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->announcer:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$AnnouncerBean;

    return-void
.end method

.method public setCover_url_large(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->cover_url_large:Ljava/lang/String;

    return-void
.end method

.method public setCover_url_middle(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->cover_url_middle:Ljava/lang/String;

    return-void
.end method

.method public setCover_url_small(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->cover_url_small:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(J)V
    .locals 0

    .line 302
    iput-wide p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->created_at:J

    return-void
.end method

.method public setFavorite_count(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->favorite_count:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->id:I

    return-void
.end method

.method public setInclude_track_count(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->include_track_count:I

    return-void
.end method

.method public setIs_finished(I)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->is_finished:I

    return-void
.end method

.method public setLast_uptrack(Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->last_uptrack:Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;

    return-void
.end method

.method public setPlay_count(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->play_count:I

    return-void
.end method

.method public setUpdated_at(J)V
    .locals 0

    .line 248
    iput-wide p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->updated_at:J

    return-void
.end method
