.class public final enum Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;
.super Ljava/lang/Enum;
.source "AMSDevReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/utils/AMSDevReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AMSReportStatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

.field public static final enum REPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

.field public static final enum UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    const-string v1, "UNREPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    .line 80
    new-instance v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    const-string v1, "REPORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->REPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->REPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->$VALUES:[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;
    .locals 1

    .line 78
    const-class v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;
    .locals 1

    .line 78
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->$VALUES:[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    return-object v0
.end method
