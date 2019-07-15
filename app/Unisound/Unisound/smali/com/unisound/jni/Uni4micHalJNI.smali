.class public Lcom/unisound/jni/Uni4micHalJNI;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/unisound/jni/Uni4micHalJNI;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Uni4micHalJNI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/jni/Uni4micHalJNI;->b:Z

    return-void
.end method

.method public static getInstance()Lcom/unisound/jni/Uni4micHalJNI;
    .locals 1

    sget-object v0, Lcom/unisound/jni/Uni4micHalJNI;->a:Lcom/unisound/jni/Uni4micHalJNI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/jni/Uni4micHalJNI;

    invoke-direct {v0}, Lcom/unisound/jni/Uni4micHalJNI;-><init>()V

    sput-object v0, Lcom/unisound/jni/Uni4micHalJNI;->a:Lcom/unisound/jni/Uni4micHalJNI;

    :cond_0
    sget-object v0, Lcom/unisound/jni/Uni4micHalJNI;->a:Lcom/unisound/jni/Uni4micHalJNI;

    return-object v0
.end method

.method private native initHal(I)I
.end method

.method private native releaseHal()I
.end method


# virtual methods
.method public native close4MicAlgorithm(I)I
.end method

.method public native closeAudioIn(J)I
.end method

.method public native get4MicBoardVersion()Ljava/lang/String;
.end method

.method public native get4MicDoaResult()I
.end method

.method public native get4MicOneShotReady()I
.end method

.method public init(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/unisound/jni/Uni4micHalJNI;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/unisound/jni/Uni4micHalJNI;->a:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-direct {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->initHal(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/jni/Uni4micHalJNI;->b:Z

    goto :goto_0
.end method

.method public native openAudioIn(I)J
.end method

.method public native readData(J[BI)I
.end method

.method public release()I
    .locals 2

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/unisound/jni/Uni4micHalJNI;->b:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/unisound/jni/Uni4micHalJNI;->a:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-direct {v0}, Lcom/unisound/jni/Uni4micHalJNI;->releaseHal()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/jni/Uni4micHalJNI;->b:Z

    :cond_0
    return v0
.end method

.method public native set4MicDebugMode(I)I
.end method

.method public native set4MicDelayTime(I)I
.end method

.method public native set4MicOneShotReady(I)I
.end method

.method public native set4MicOneShotStartLen(I)I
.end method

.method public native set4MicUtteranceTimeLen(I)I
.end method

.method public native set4MicWakeUpStatus(I)I
.end method

.method public native set4MicWakeupStartLen(I)I
.end method

.method public native startRecorder(J)I
.end method

.method public native stopRecorder(J)I
.end method
