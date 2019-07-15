.class public Lcom/unisound/lib/push/constant/NetConstantSwitch;
.super Ljava/lang/Object;


# static fields
.field public static final INNER_URL:Ljava/lang/String; = "211.102.192.39:1883"

.field private static isOuter:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOuter()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/lib/push/constant/NetConstantSwitch;->isOuter:Z

    return v0
.end method

.method public static setIsOuter(Z)V
    .locals 0

    sput-boolean p0, Lcom/unisound/lib/push/constant/NetConstantSwitch;->isOuter:Z

    return-void
.end method
