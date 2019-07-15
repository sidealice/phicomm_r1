.class public final enum Lcn/kuwo/autosdk/api/PlayEndType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum END_COMPLETE:Lcn/kuwo/autosdk/api/PlayEndType;

.field public static final enum END_ERROR:Lcn/kuwo/autosdk/api/PlayEndType;

.field public static final enum END_USER:Lcn/kuwo/autosdk/api/PlayEndType;

.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayEndType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/api/PlayEndType;

    const-string v1, "END_COMPLETE"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/api/PlayEndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->END_COMPLETE:Lcn/kuwo/autosdk/api/PlayEndType;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayEndType;

    const-string v1, "END_USER"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/api/PlayEndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->END_USER:Lcn/kuwo/autosdk/api/PlayEndType;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayEndType;

    const-string v1, "END_ERROR"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/api/PlayEndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->END_ERROR:Lcn/kuwo/autosdk/api/PlayEndType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/kuwo/autosdk/api/PlayEndType;

    sget-object v1, Lcn/kuwo/autosdk/api/PlayEndType;->END_COMPLETE:Lcn/kuwo/autosdk/api/PlayEndType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/api/PlayEndType;->END_USER:Lcn/kuwo/autosdk/api/PlayEndType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/api/PlayEndType;->END_ERROR:Lcn/kuwo/autosdk/api/PlayEndType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayEndType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/api/PlayEndType;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/api/PlayEndType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/api/PlayEndType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/api/PlayEndType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayEndType;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/api/PlayEndType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
