.class Lcom/xiaomi/c/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/xiaomi/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/c/f;

    invoke-direct {v0}, Lcom/xiaomi/c/f;-><init>()V

    sput-object v0, Lcom/xiaomi/c/f$a;->a:Lcom/xiaomi/c/f;

    return-void
.end method
