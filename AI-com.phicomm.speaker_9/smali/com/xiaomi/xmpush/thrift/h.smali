.class public final enum Lcom/xiaomi/xmpush/thrift/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/xmpush/thrift/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/xmpush/thrift/h;

.field public static final enum b:Lcom/xiaomi/xmpush/thrift/h;

.field public static final enum c:Lcom/xiaomi/xmpush/thrift/h;

.field public static final enum d:Lcom/xiaomi/xmpush/thrift/h;

.field public static final enum e:Lcom/xiaomi/xmpush/thrift/h;

.field private static final synthetic g:[Lcom/xiaomi/xmpush/thrift/h;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/xmpush/thrift/h;

    const-string v1, "Baidu"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/xmpush/thrift/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/h;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/h;

    const-string v1, "Tencent"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/xmpush/thrift/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/h;->b:Lcom/xiaomi/xmpush/thrift/h;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/h;

    const-string v1, "AutoNavi"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/xmpush/thrift/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/h;->c:Lcom/xiaomi/xmpush/thrift/h;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/h;

    const-string v1, "Google"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/xmpush/thrift/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/h;->d:Lcom/xiaomi/xmpush/thrift/h;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/h;

    const-string v1, "GPS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/xmpush/thrift/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/h;->e:Lcom/xiaomi/xmpush/thrift/h;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/h;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->b:Lcom/xiaomi/xmpush/thrift/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->c:Lcom/xiaomi/xmpush/thrift/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->d:Lcom/xiaomi/xmpush/thrift/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->e:Lcom/xiaomi/xmpush/thrift/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/xmpush/thrift/h;->g:[Lcom/xiaomi/xmpush/thrift/h;

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

    iput p3, p0, Lcom/xiaomi/xmpush/thrift/h;->f:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/xmpush/thrift/h;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/xmpush/thrift/h;->e:Lcom/xiaomi/xmpush/thrift/h;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/xmpush/thrift/h;->d:Lcom/xiaomi/xmpush/thrift/h;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/xmpush/thrift/h;->c:Lcom/xiaomi/xmpush/thrift/h;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/xiaomi/xmpush/thrift/h;->b:Lcom/xiaomi/xmpush/thrift/h;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/h;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/h;
    .locals 1

    const-class v0, Lcom/xiaomi/xmpush/thrift/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/xmpush/thrift/h;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/h;
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/h;->g:[Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/h;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/h;->f:I

    return v0
.end method
