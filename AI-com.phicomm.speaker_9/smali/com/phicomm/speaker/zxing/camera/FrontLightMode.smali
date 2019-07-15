.class public final enum Lcom/phicomm/speaker/zxing/camera/FrontLightMode;
.super Ljava/lang/Enum;
.source "FrontLightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/zxing/camera/FrontLightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

.field public static final enum AUTO:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

.field public static final enum OFF:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

.field public static final enum ON:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->ON:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    .line 30
    new-instance v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    const-string v1, "AUTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->AUTO:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    .line 32
    new-instance v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->OFF:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    sget-object v1, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->ON:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->AUTO:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->OFF:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->$VALUES:[Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static parse(Ljava/lang/String;)Lcom/phicomm/speaker/zxing/camera/FrontLightMode;
    .locals 0

    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->OFF:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static readPref(Landroid/content/SharedPreferences;)Lcom/phicomm/speaker/zxing/camera/FrontLightMode;
    .locals 2

    const-string v0, "preferences_front_light_mode"

    .line 39
    sget-object v1, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->OFF:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    invoke-virtual {v1}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->parse(Ljava/lang/String;)Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/zxing/camera/FrontLightMode;
    .locals 1

    .line 26
    const-class v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/zxing/camera/FrontLightMode;
    .locals 1

    .line 26
    sget-object v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->$VALUES:[Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    return-object v0
.end method
