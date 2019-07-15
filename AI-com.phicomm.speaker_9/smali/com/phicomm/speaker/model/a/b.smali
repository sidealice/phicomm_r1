.class public Lcom/phicomm/speaker/model/a/b;
.super Ljava/lang/Object;
.source "RingtoneData.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u96c0\u8dc3\u5fc3\u60c5"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u51b0\u96ea\u6d88\u878d"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u94a2\u7434\u6f14\u594f"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "\u5916\u56fd\u98ce\u60c5"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "\u5e78\u798f\u5f00\u542f"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "\u851a\u84dd\u6d77\u5e95"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "\u661f\u5149\u95ea\u70c1"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "\u97f3\u7b26\u8df3\u8dc3"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "\u4f18\u96c5\u65cb\u5f8b"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/model/a/b;->a:Ljava/util/List;

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cheerful_mood"

    aput-object v1, v0, v3

    const-string v1, "ice_thaw"

    aput-object v1, v0, v4

    const-string v1, "piano"

    aput-object v1, v0, v5

    const-string v1, "exotic"

    aput-object v1, v0, v6

    const-string v1, "happiness"

    aput-object v1, v0, v7

    const-string v1, "blue_sea"

    aput-object v1, v0, v8

    const-string v1, "bling_star"

    aput-object v1, v0, v9

    const-string v1, "musical_jumps"

    aput-object v1, v0, v10

    const-string v1, "elegant_melody"

    aput-object v1, v0, v11

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/model/a/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/phicomm/speaker/model/a/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p1
.end method
