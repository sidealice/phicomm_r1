.class public final Lcom/unisound/vui/transport/config/RuntimeConfig;
.super Ljava/lang/Object;


# static fields
.field private static isConnectedWifi:Z

.field private static isOnceConnectSuc:Z


# instance fields
.field private fixAsrResBenchmark:F

.field private isUseOutRecordSource:Z

.field private wakUpBenchmark:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isOnceConnectSuc:Z

    sput-boolean v0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isConnectedWifi:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x3f380000    # -6.25f

    iput v0, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->fixAsrResBenchmark:F

    const/high16 v0, -0x3fc00000    # -3.0f

    iput v0, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->wakUpBenchmark:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isUseOutRecordSource:Z

    return-void
.end method

.method public static isConnectedWifi()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isConnectedWifi:Z

    return v0
.end method

.method public static isOnceConnectSuc()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isOnceConnectSuc:Z

    return v0
.end method

.method public static setConnectedWifi(Z)V
    .locals 0
    .param p0, "isConnectedWifi"    # Z

    .prologue
    sput-boolean p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isConnectedWifi:Z

    return-void
.end method

.method public static setOnceConnectSuc(Z)V
    .locals 0
    .param p0, "isOnceConnectSuc"    # Z

    .prologue
    sput-boolean p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isOnceConnectSuc:Z

    return-void
.end method


# virtual methods
.method public getFixAsrResBenchmark()F
    .locals 1

    iget v0, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->fixAsrResBenchmark:F

    return v0
.end method

.method public getWakUpBenchmark()F
    .locals 1

    iget v0, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->wakUpBenchmark:F

    return v0
.end method

.method public isUseOutRecordSource()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isUseOutRecordSource:Z

    return v0
.end method

.method public setFixAsrResBenchmark(F)V
    .locals 0
    .param p1, "fixAsrResBenchmark"    # F

    .prologue
    iput p1, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->fixAsrResBenchmark:F

    return-void
.end method

.method public setIsUseOutRecordSource(Z)V
    .locals 0
    .param p1, "isUseOutRecordSource"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->isUseOutRecordSource:Z

    return-void
.end method

.method public setWakUpBenchmark(F)V
    .locals 0
    .param p1, "wakUpBenchmark"    # F

    .prologue
    iput p1, p0, Lcom/unisound/vui/transport/config/RuntimeConfig;->wakUpBenchmark:F

    return-void
.end method
