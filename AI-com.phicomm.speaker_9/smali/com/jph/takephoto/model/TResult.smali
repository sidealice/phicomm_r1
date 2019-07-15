.class public Lcom/jph/takephoto/model/TResult;
.super Ljava/lang/Object;
.source "TResult.java"


# instance fields
.field private image:Lcom/jph/takephoto/model/TImage;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jph/takephoto/model/TResult;->images:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jph/takephoto/model/TImage;

    iput-object p1, p0, Lcom/jph/takephoto/model/TResult;->image:Lcom/jph/takephoto/model/TImage;

    :cond_0
    return-void
.end method

.method public static of(Lcom/jph/takephoto/model/TImage;)Lcom/jph/takephoto/model/TResult;
    .locals 2

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p0, Lcom/jph/takephoto/model/TResult;

    invoke-direct {p0, v0}, Lcom/jph/takephoto/model/TResult;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static of(Ljava/util/ArrayList;)Lcom/jph/takephoto/model/TResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;)",
            "Lcom/jph/takephoto/model/TResult;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/jph/takephoto/model/TResult;

    invoke-direct {v0, p0}, Lcom/jph/takephoto/model/TResult;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public getImage()Lcom/jph/takephoto/model/TImage;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jph/takephoto/model/TResult;->image:Lcom/jph/takephoto/model/TImage;

    return-object v0
.end method

.method public getImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/jph/takephoto/model/TResult;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setImage(Lcom/jph/takephoto/model/TImage;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jph/takephoto/model/TResult;->image:Lcom/jph/takephoto/model/TImage;

    return-void
.end method

.method public setImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/jph/takephoto/model/TResult;->images:Ljava/util/ArrayList;

    return-void
.end method
