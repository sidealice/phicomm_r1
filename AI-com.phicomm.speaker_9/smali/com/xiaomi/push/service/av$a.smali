.class public Lcom/xiaomi/push/service/av$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/av$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/service/av$b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/av$b;)Z
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/push/service/av$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/d/d;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
