.class public Lcom/jph/takephoto/compress/CompressWithLuBan;
.super Ljava/lang/Object;
.source "CompressWithLuBan.java"

# interfaces
.implements Lcom/jph/takephoto/compress/CompressImage;


# instance fields
.field private context:Landroid/content/Context;

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/jph/takephoto/compress/CompressImage$CompressListener;

.field private options:Lcom/jph/takephoto/model/LubanOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jph/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lcom/jph/takephoto/compress/CompressImage$CompressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/jph/takephoto/compress/CompressConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;",
            "Lcom/jph/takephoto/compress/CompressImage$CompressListener;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p2}, Lcom/jph/takephoto/compress/CompressConfig;->getLubanOptions()Lcom/jph/takephoto/model/LubanOptions;

    move-result-object p2

    iput-object p2, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->options:Lcom/jph/takephoto/model/LubanOptions;

    .line 34
    iput-object p3, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    .line 35
    iput-object p4, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->listener:Lcom/jph/takephoto/compress/CompressImage$CompressListener;

    .line 36
    iput-object p1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/jph/takephoto/compress/CompressWithLuBan;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jph/takephoto/compress/CompressWithLuBan;)Lcom/jph/takephoto/compress/CompressImage$CompressListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->listener:Lcom/jph/takephoto/compress/CompressImage$CompressListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jph/takephoto/compress/CompressWithLuBan;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jph/takephoto/compress/CompressWithLuBan;->handleCompressCallBack(Ljava/util/List;)V

    return-void
.end method

.method private compressMulti()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lme/shaohui/advancedluban/a;->a(Landroid/content/Context;Ljava/util/List;)Lme/shaohui/advancedluban/a;

    move-result-object v0

    const/4 v1, 0x4

    .line 84
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->a(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->options:Lcom/jph/takephoto/model/LubanOptions;

    .line 86
    invoke-virtual {v1}, Lcom/jph/takephoto/model/LubanOptions;->getMaxSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 85
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->b(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->options:Lcom/jph/takephoto/model/LubanOptions;

    .line 87
    invoke-virtual {v1}, Lcom/jph/takephoto/model/LubanOptions;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->d(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->options:Lcom/jph/takephoto/model/LubanOptions;

    .line 88
    invoke-virtual {v1}, Lcom/jph/takephoto/model/LubanOptions;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->c(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    new-instance v1, Lcom/jph/takephoto/compress/CompressWithLuBan$2;

    invoke-direct {v1, p0}, Lcom/jph/takephoto/compress/CompressWithLuBan$2;-><init>(Lcom/jph/takephoto/compress/CompressWithLuBan;)V

    .line 89
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->a(Lme/shaohui/advancedluban/e;)V

    return-void
.end method

.method private compressOne()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v0, v1}, Lme/shaohui/advancedluban/a;->a(Landroid/content/Context;Ljava/io/File;)Lme/shaohui/advancedluban/a;

    move-result-object v0

    const/4 v1, 0x4

    .line 60
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->a(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->options:Lcom/jph/takephoto/model/LubanOptions;

    .line 61
    invoke-virtual {v1}, Lcom/jph/takephoto/model/LubanOptions;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->d(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->options:Lcom/jph/takephoto/model/LubanOptions;

    .line 62
    invoke-virtual {v1}, Lcom/jph/takephoto/model/LubanOptions;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->c(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->options:Lcom/jph/takephoto/model/LubanOptions;

    .line 63
    invoke-virtual {v1}, Lcom/jph/takephoto/model/LubanOptions;->getMaxSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->b(I)Lme/shaohui/advancedluban/a;

    move-result-object v0

    new-instance v1, Lcom/jph/takephoto/compress/CompressWithLuBan$1;

    invoke-direct {v1, p0}, Lcom/jph/takephoto/compress/CompressWithLuBan$1;-><init>(Lcom/jph/takephoto/compress/CompressWithLuBan;)V

    .line 64
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/a;->a(Lme/shaohui/advancedluban/d;)V

    return-void
.end method

.method private handleCompressCallBack(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    iget-object v2, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jph/takephoto/model/TImage;

    const/4 v3, 0x1

    .line 107
    invoke-virtual {v2, v3}, Lcom/jph/takephoto/model/TImage;->setCompressed(Z)V

    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jph/takephoto/model/TImage;->setCompressPath(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->listener:Lcom/jph/takephoto/compress/CompressImage$CompressListener;

    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/jph/takephoto/compress/CompressImage$CompressListener;->onCompressSuccess(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public compress()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jph/takephoto/model/TImage;

    if-nez v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->listener:Lcom/jph/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    const-string v2, " There are pictures of compress  is null."

    invoke-interface {v0, v1, v2}, Lcom/jph/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/jph/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 52
    invoke-direct {p0}, Lcom/jph/takephoto/compress/CompressWithLuBan;->compressOne()V

    goto :goto_1

    .line 54
    :cond_3
    invoke-direct {p0}, Lcom/jph/takephoto/compress/CompressWithLuBan;->compressMulti()V

    :goto_1
    return-void

    .line 41
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->listener:Lcom/jph/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    const-string v2, " images is null"

    invoke-interface {v0, v1, v2}, Lcom/jph/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
