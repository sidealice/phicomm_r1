.class Lcom/ut/mini/plugin/UTPluginMgr$a;
.super Ljava/lang/Object;
.source "UTPluginMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/plugin/UTPluginMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private K:I

.field private a:Lcom/ut/mini/plugin/UTPlugin;

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->K:I

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->f:Ljava/lang/Object;

    .line 256
    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->a:Lcom/ut/mini/plugin/UTPlugin;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ut/mini/plugin/UTPluginMgr$1;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/ut/mini/plugin/UTPluginMgr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ut/mini/plugin/UTPlugin;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->a:Lcom/ut/mini/plugin/UTPlugin;

    return-object v0
.end method

.method public a(Lcom/ut/mini/plugin/UTPlugin;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->a:Lcom/ut/mini/plugin/UTPlugin;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->K:I

    return-void
.end method

.method public getMsgObj()Ljava/lang/Object;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/ut/mini/plugin/UTPluginMgr$a;->K:I

    return v0
.end method
