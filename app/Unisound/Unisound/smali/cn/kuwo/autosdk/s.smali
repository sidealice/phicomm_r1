.class public final enum Lcn/kuwo/autosdk/s;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/autosdk/s;

.field public static final enum b:Lcn/kuwo/autosdk/s;

.field public static final enum c:Lcn/kuwo/autosdk/s;

.field private static final synthetic d:[Lcn/kuwo/autosdk/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/s;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/s;->a:Lcn/kuwo/autosdk/s;

    new-instance v0, Lcn/kuwo/autosdk/s;

    const-string v1, "NET"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/s;->b:Lcn/kuwo/autosdk/s;

    new-instance v0, Lcn/kuwo/autosdk/s;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/s;->c:Lcn/kuwo/autosdk/s;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/autosdk/s;

    sget-object v1, Lcn/kuwo/autosdk/s;->a:Lcn/kuwo/autosdk/s;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/s;->b:Lcn/kuwo/autosdk/s;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/s;->c:Lcn/kuwo/autosdk/s;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/autosdk/s;->d:[Lcn/kuwo/autosdk/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
