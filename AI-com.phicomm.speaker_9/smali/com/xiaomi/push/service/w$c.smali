.class public Lcom/xiaomi/push/service/w$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/w;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/w$c;->a:Lcom/xiaomi/push/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/w$c;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/w$c;->b:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/w$c;->a:Lcom/xiaomi/push/service/w;

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/w;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "[TinyDataManager]: please do not init TinyDataManager repeatly."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/w$c;->a:Lcom/xiaomi/push/service/w;

    iget-object v1, p0, Lcom/xiaomi/push/service/w$c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/w;Landroid/content/Context;)Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/push/service/av$a;

    iget-object v1, p0, Lcom/xiaomi/push/service/w$c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/av$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/w$c;->a:Lcom/xiaomi/push/service/w;

    const-string v2, "SHORT_UPLOADER_FROM_SELF"

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/w$b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/w$c;->a:Lcom/xiaomi/push/service/w;

    const-string v1, "Init"

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/w;Ljava/lang/String;)Z

    return-void
.end method
