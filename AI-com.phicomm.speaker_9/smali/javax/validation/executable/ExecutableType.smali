.class public final enum Ljavax/validation/executable/ExecutableType;
.super Ljava/lang/Enum;
.source "ExecutableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/validation/executable/ExecutableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/executable/ExecutableType;

.field public static final enum ALL:Ljavax/validation/executable/ExecutableType;

.field public static final enum CONSTRUCTORS:Ljavax/validation/executable/ExecutableType;

.field public static final enum GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

.field public static final enum IMPLICIT:Ljavax/validation/executable/ExecutableType;

.field public static final enum NONE:Ljavax/validation/executable/ExecutableType;

.field public static final enum NON_GETTER_METHODS:Ljavax/validation/executable/ExecutableType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "IMPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->IMPLICIT:Ljavax/validation/executable/ExecutableType;

    .line 46
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->NONE:Ljavax/validation/executable/ExecutableType;

    .line 51
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "CONSTRUCTORS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->CONSTRUCTORS:Ljavax/validation/executable/ExecutableType;

    .line 61
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "NON_GETTER_METHODS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->NON_GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    .line 72
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "GETTER_METHODS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    .line 77
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "ALL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->ALL:Ljavax/validation/executable/ExecutableType;

    const/4 v0, 0x6

    .line 25
    new-array v0, v0, [Ljavax/validation/executable/ExecutableType;

    sget-object v1, Ljavax/validation/executable/ExecutableType;->IMPLICIT:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/validation/executable/ExecutableType;->NONE:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/validation/executable/ExecutableType;->CONSTRUCTORS:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/validation/executable/ExecutableType;->NON_GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/validation/executable/ExecutableType;->GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/validation/executable/ExecutableType;->ALL:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v7

    sput-object v0, Ljavax/validation/executable/ExecutableType;->$VALUES:[Ljavax/validation/executable/ExecutableType;

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

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/executable/ExecutableType;
    .locals 1

    .line 25
    const-class v0, Ljavax/validation/executable/ExecutableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/validation/executable/ExecutableType;

    return-object p0
.end method

.method public static values()[Ljavax/validation/executable/ExecutableType;
    .locals 1

    .line 25
    sget-object v0, Ljavax/validation/executable/ExecutableType;->$VALUES:[Ljavax/validation/executable/ExecutableType;

    invoke-virtual {v0}, [Ljavax/validation/executable/ExecutableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/executable/ExecutableType;

    return-object v0
.end method
