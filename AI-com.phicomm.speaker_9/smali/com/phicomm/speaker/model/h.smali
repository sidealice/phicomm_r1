.class public Lcom/phicomm/speaker/model/h;
.super Ljava/lang/Object;
.source "MediaModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;IZLcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    const-string p2, "play"

    goto :goto_0

    :pswitch_0
    const-string p2, "cancelCollect"

    goto :goto_0

    :pswitch_1
    const-string p2, "collect"

    goto :goto_0

    :pswitch_2
    const-string p2, "next"

    goto :goto_0

    :pswitch_3
    const-string p2, "prev"

    goto :goto_0

    :pswitch_4
    const-string p2, "play"

    goto :goto_0

    :pswitch_5
    const-string p2, "play"

    .line 80
    :goto_0
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/phicomm/speaker/e/c/b;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "100_"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "6_"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "https://home.phicomm.com/phimusic/search/music/lyric"

    .line 206
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/net/c/c;->a(Z)Lcom/phicomm/speaker/net/c/a;

    move-result-object v0

    const-string v1, "song_id"

    .line 208
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/phicomm/speaker/e/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;ZLcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZLcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;ZZLcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/e/a;->a([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b(Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/msgcenter/bean/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/e/a;->a(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/e/a;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/e/a;->b([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public c(Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/e/a;->c(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public d(Lcom/phicomm/speaker/e/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/music/bean/CurrentMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "1000"

    invoke-virtual {v0, v1, v2, p1}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public e(Lcom/phicomm/speaker/e/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentList;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "1000"

    invoke-virtual {v0, v1, v2, p1}, Lcom/phicomm/speaker/e/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public f(Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;>;)V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/e/a;->b(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public g(Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioCollectList;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/e/a;->d(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method
