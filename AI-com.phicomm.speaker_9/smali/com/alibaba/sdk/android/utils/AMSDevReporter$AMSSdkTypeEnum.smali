.class public final enum Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;
.super Ljava/lang/Enum;
.source "AMSDevReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/utils/AMSDevReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AMSSdkTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_API:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_FEEDBACK:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_HOTFIX:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_HTTPDNS:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_IM:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_MAC:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_MAN:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

.field public static final enum AMS_MPUSH:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 34
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_MAN"

    const-string v2, "MAN"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_MAN:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    .line 35
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_HTTPDNS"

    const-string v2, "HTTPDNS"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_HTTPDNS:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    .line 36
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_MPUSH"

    const-string v2, "MPUSH"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_MPUSH:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    .line 37
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_MAC"

    const-string v2, "MAC"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_MAC:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    .line 38
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_API"

    const-string v2, "API"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_API:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    .line 39
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_HOTFIX"

    const-string v2, "HOTFIX"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_HOTFIX:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    .line 40
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_FEEDBACK"

    const-string v2, "FEEDBACK"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_FEEDBACK:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    .line 41
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const-string v1, "AMS_IM"

    const-string v2, "IM"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_IM:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    const/16 v0, 0x8

    .line 32
    new-array v0, v0, [Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_MAN:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_HTTPDNS:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_MPUSH:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_MAC:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_API:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_HOTFIX:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_FEEDBACK:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_IM:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    aput-object v1, v0, v10

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->$VALUES:[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;
    .locals 1

    .line 32
    const-class v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;
    .locals 1

    .line 32
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->$VALUES:[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->description:Ljava/lang/String;

    return-object v0
.end method
