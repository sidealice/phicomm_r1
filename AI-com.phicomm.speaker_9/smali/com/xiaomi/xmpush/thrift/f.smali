.class public final enum Lcom/xiaomi/xmpush/thrift/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/xmpush/thrift/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/xmpush/thrift/f;

.field public static final enum b:Lcom/xiaomi/xmpush/thrift/f;

.field private static final synthetic d:[Lcom/xiaomi/xmpush/thrift/f;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/xmpush/thrift/f;

    const-string v1, "MISC_CONFIG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/f;->a:Lcom/xiaomi/xmpush/thrift/f;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/f;

    const-string v1, "PLUGIN_CONFIG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/xmpush/thrift/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/f;->b:Lcom/xiaomi/xmpush/thrift/f;

    new-array v0, v4, [Lcom/xiaomi/xmpush/thrift/f;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/f;->a:Lcom/xiaomi/xmpush/thrift/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/f;->b:Lcom/xiaomi/xmpush/thrift/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/xmpush/thrift/f;->d:[Lcom/xiaomi/xmpush/thrift/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/xmpush/thrift/f;->c:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/xmpush/thrift/f;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/xmpush/thrift/f;->b:Lcom/xiaomi/xmpush/thrift/f;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/xmpush/thrift/f;->a:Lcom/xiaomi/xmpush/thrift/f;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;
    .locals 1

    const-class v0, Lcom/xiaomi/xmpush/thrift/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/xmpush/thrift/f;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/f;
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/f;->d:[Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/f;->c:I

    return v0
.end method
