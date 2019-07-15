.class public Lcom/jph/takephoto/model/MultipleCrop;
.super Ljava/lang/Object;
.source "MultipleCrop.java"


# instance fields
.field private fromType:Lcom/jph/takephoto/model/TImage$FromType;

.field public hasFailed:Z

.field private outUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private tImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;"
        }
    .end annotation
.end field

.field private uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/jph/takephoto/model/TImage$FromType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/jph/takephoto/model/TImage$FromType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jph/takephoto/model/TException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jph/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 31
    invoke-static {p2, v1}, Lcom/jph/takephoto/uitl/TImageFiles;->getTempFile(Landroid/app/Activity;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    iput-object v0, p0, Lcom/jph/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    .line 34
    invoke-static {v0, p3}, Lcom/jph/takephoto/uitl/TUtils;->getTImagesWithUris(Ljava/util/ArrayList;Lcom/jph/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    .line 35
    iput-object p3, p0, Lcom/jph/takephoto/model/MultipleCrop;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jph/takephoto/model/TImage$FromType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/jph/takephoto/model/TImage$FromType;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jph/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/jph/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    .line 40
    invoke-static {p2, p3}, Lcom/jph/takephoto/uitl/TUtils;->getTImagesWithUris(Ljava/util/ArrayList;Lcom/jph/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    .line 41
    iput-object p3, p0, Lcom/jph/takephoto/model/MultipleCrop;->fromType:Lcom/jph/takephoto/model/TImage$FromType;

    return-void
.end method

.method public static of(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/MultipleCrop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/jph/takephoto/model/TImage$FromType;",
            ")",
            "Lcom/jph/takephoto/model/MultipleCrop;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jph/takephoto/model/TException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/jph/takephoto/model/MultipleCrop;

    invoke-direct {v0, p0, p1, p2}, Lcom/jph/takephoto/model/MultipleCrop;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/jph/takephoto/model/TImage$FromType;)V

    return-object v0
.end method

.method public static of(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jph/takephoto/model/TImage$FromType;)Lcom/jph/takephoto/model/MultipleCrop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/jph/takephoto/model/TImage$FromType;",
            ")",
            "Lcom/jph/takephoto/model/MultipleCrop;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/jph/takephoto/model/MultipleCrop;

    invoke-direct {v0, p0, p1, p2}, Lcom/jph/takephoto/model/MultipleCrop;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jph/takephoto/model/TImage$FromType;)V

    return-object v0
.end method


# virtual methods
.method public getOutUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/jph/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/jph/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public gettImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/jph/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCropWithUri(Landroid/net/Uri;Z)Ljava/util/Map;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 74
    iput-boolean v0, p0, Lcom/jph/takephoto/model/MultipleCrop;->hasFailed:Z

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/jph/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 76
    iget-object v1, p0, Lcom/jph/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jph/takephoto/model/TImage;

    invoke-virtual {v1, p2}, Lcom/jph/takephoto/model/TImage;->setCropped(Z)V

    .line 77
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "index"

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isLast"

    .line 79
    iget-object v2, p0, Lcom/jph/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public setOutUris(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/jph/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    return-void
.end method

.method public setUris(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/jph/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    return-void
.end method

.method public settImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/jph/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    return-void
.end method
