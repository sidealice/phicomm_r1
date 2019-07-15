.class public final enum Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;
.super Ljava/lang/Enum;
.source "WifiConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/netmodule/WifiConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_INVALID:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_NOPASS:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_WEP:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_WPA:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_WEP"

    invoke-direct {v0, v1, v2}, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_WEP:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    new-instance v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_WPA"

    invoke-direct {v0, v1, v3}, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_WPA:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    new-instance v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_NOPASS"

    invoke-direct {v0, v1, v4}, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    new-instance v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_INVALID"

    invoke-direct {v0, v1, v5}, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_INVALID:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    sget-object v1, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_WEP:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_WPA:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->WIFICIPHER_INVALID:Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->$VALUES:[Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    return-object v0
.end method

.method public static values()[Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->$VALUES:[Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    invoke-virtual {v0}, [Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/ant/device/netmodule/WifiConnect$WifiCipherType;

    return-object v0
.end method
