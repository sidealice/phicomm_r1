.class final enum Lcn/kuwo/autosdk/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/autosdk/e;

.field public static final enum b:Lcn/kuwo/autosdk/e;

.field public static final enum c:Lcn/kuwo/autosdk/e;

.field private static final synthetic d:[Lcn/kuwo/autosdk/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/e;

    const-string v1, "NOTIFY_START"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    new-instance v0, Lcn/kuwo/autosdk/e;

    const-string v1, "NOTIFY_FAILED"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/e;->b:Lcn/kuwo/autosdk/e;

    new-instance v0, Lcn/kuwo/autosdk/e;

    const-string v1, "NOTIFY_FINISH"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/e;->c:Lcn/kuwo/autosdk/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/autosdk/e;

    sget-object v1, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/e;->b:Lcn/kuwo/autosdk/e;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/e;->c:Lcn/kuwo/autosdk/e;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/autosdk/e;->d:[Lcn/kuwo/autosdk/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcn/kuwo/autosdk/e;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/e;->d:[Lcn/kuwo/autosdk/e;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
