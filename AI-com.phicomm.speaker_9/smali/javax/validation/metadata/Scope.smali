.class public final enum Ljavax/validation/metadata/Scope;
.super Ljava/lang/Enum;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/validation/metadata/Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/metadata/Scope;

.field public static final enum HIERARCHY:Ljavax/validation/metadata/Scope;

.field public static final enum LOCAL_ELEMENT:Ljavax/validation/metadata/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Ljavax/validation/metadata/Scope;

    const-string v1, "LOCAL_ELEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/validation/metadata/Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/metadata/Scope;->LOCAL_ELEMENT:Ljavax/validation/metadata/Scope;

    .line 37
    new-instance v0, Ljavax/validation/metadata/Scope;

    const-string v1, "HIERARCHY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljavax/validation/metadata/Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/metadata/Scope;->HIERARCHY:Ljavax/validation/metadata/Scope;

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Ljavax/validation/metadata/Scope;

    sget-object v1, Ljavax/validation/metadata/Scope;->LOCAL_ELEMENT:Ljavax/validation/metadata/Scope;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/validation/metadata/Scope;->HIERARCHY:Ljavax/validation/metadata/Scope;

    aput-object v1, v0, v3

    sput-object v0, Ljavax/validation/metadata/Scope;->$VALUES:[Ljavax/validation/metadata/Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/metadata/Scope;
    .locals 1

    .line 24
    const-class v0, Ljavax/validation/metadata/Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/validation/metadata/Scope;

    return-object p0
.end method

.method public static values()[Ljavax/validation/metadata/Scope;
    .locals 1

    .line 24
    sget-object v0, Ljavax/validation/metadata/Scope;->$VALUES:[Ljavax/validation/metadata/Scope;

    invoke-virtual {v0}, [Ljavax/validation/metadata/Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/metadata/Scope;

    return-object v0
.end method
