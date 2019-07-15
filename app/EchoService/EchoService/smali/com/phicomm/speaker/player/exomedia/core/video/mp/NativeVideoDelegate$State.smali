.class public final enum Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;
.super Ljava/lang/Enum;
.source "NativeVideoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum COMPLETED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum ERROR:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PAUSED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PLAYING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PREPARED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PREPARING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 50
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 51
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v5}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 52
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 53
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v7}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PLAYING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 54
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PAUSED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 55
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "COMPLETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PLAYING:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PAUSED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->$VALUES:[Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-object v0
.end method

.method public static values()[Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->$VALUES:[Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-object v0
.end method
