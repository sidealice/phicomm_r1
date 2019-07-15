.class Lcom/xiaomi/channel/commonutils/c/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lcom/xiaomi/channel/commonutils/c/f$a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/c/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/f$b;->a:Lcom/xiaomi/channel/commonutils/c/f$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method b()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/channel/commonutils/c/f$b;->a()V

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f$b;->a:Lcom/xiaomi/channel/commonutils/c/f$a;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/f$a;->run()V

    invoke-virtual {p0}, Lcom/xiaomi/channel/commonutils/c/f$b;->b()V

    return-void
.end method
