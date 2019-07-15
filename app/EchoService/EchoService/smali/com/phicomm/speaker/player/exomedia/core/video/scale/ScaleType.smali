.class public final enum Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;
.super Ljava/lang/Enum;
.source "ScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

.field public static final enum CENTER:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

.field public static final enum CENTER_CROP:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

.field public static final enum CENTER_INSIDE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

.field public static final enum FIT_CENTER:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

.field public static final enum FIT_XY:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

.field public static final enum NONE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->CENTER:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 10
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->CENTER_CROP:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 11
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    const-string v1, "CENTER_INSIDE"

    invoke-direct {v0, v1, v5}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->CENTER_INSIDE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 12
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v6}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->FIT_CENTER:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 13
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    const-string v1, "FIT_XY"

    invoke-direct {v0, v1, v7}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->FIT_XY:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 14
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->NONE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->CENTER:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->CENTER_CROP:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->CENTER_INSIDE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->FIT_CENTER:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->FIT_XY:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->NONE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->$VALUES:[Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;
    .locals 1
    .param p0, "ordinal"    # I

    .prologue
    .line 25
    if-ltz p0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->NONE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->ordinal()I

    move-result v0

    if-le p0, v0, :cond_1

    .line 26
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->NONE:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 29
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->values()[Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->$VALUES:[Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    return-object v0
.end method
