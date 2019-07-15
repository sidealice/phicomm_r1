.class Lcom/xiaomi/push/service/w$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/push/service/w;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/w;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/w$d;->b:Lcom/xiaomi/push/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/push/service/w$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/w$d;->b:Lcom/xiaomi/push/service/w;

    iget-object v1, p0, Lcom/xiaomi/push/service/w$d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/w;Ljava/lang/String;)Z

    return-void
.end method
