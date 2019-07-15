.class public final enum Ljavax/validation/metadata/MethodType;
.super Ljava/lang/Enum;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/validation/metadata/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/metadata/MethodType;

.field public static final enum GETTER:Ljavax/validation/metadata/MethodType;

.field public static final enum NON_GETTER:Ljavax/validation/metadata/MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Ljavax/validation/metadata/MethodType;

    const-string v1, "GETTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/validation/metadata/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/metadata/MethodType;->GETTER:Ljavax/validation/metadata/MethodType;

    .line 45
    new-instance v0, Ljavax/validation/metadata/MethodType;

    const-string v1, "NON_GETTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljavax/validation/metadata/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/metadata/MethodType;->NON_GETTER:Ljavax/validation/metadata/MethodType;

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Ljavax/validation/metadata/MethodType;

    sget-object v1, Ljavax/validation/metadata/MethodType;->GETTER:Ljavax/validation/metadata/MethodType;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/validation/metadata/MethodType;->NON_GETTER:Ljavax/validation/metadata/MethodType;

    aput-object v1, v0, v3

    sput-object v0, Ljavax/validation/metadata/MethodType;->$VALUES:[Ljavax/validation/metadata/MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/metadata/MethodType;
    .locals 1

    .line 25
    const-class v0, Ljavax/validation/metadata/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/validation/metadata/MethodType;

    return-object p0
.end method

.method public static values()[Ljavax/validation/metadata/MethodType;
    .locals 1

    .line 25
    sget-object v0, Ljavax/validation/metadata/MethodType;->$VALUES:[Ljavax/validation/metadata/MethodType;

    invoke-virtual {v0}, [Ljavax/validation/metadata/MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/metadata/MethodType;

    return-object v0
.end method
