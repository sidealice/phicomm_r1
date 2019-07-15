.class public final enum Lcom/kaolafm/sdk/client/EdogPage;
.super Ljava/lang/Enum;
.source "EdogPage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaolafm/sdk/client/EdogPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaolafm/sdk/client/EdogPage;

.field public static final enum EDOG:Lcom/kaolafm/sdk/client/EdogPage;

.field public static final enum LIB:Lcom/kaolafm/sdk/client/EdogPage;

.field public static final enum ME:Lcom/kaolafm/sdk/client/EdogPage;

.field public static final enum PLAYER:Lcom/kaolafm/sdk/client/EdogPage;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/kaolafm/sdk/client/EdogPage;

    const-string v1, "EDOG"

    const-string v2, "EDog"

    invoke-direct {v0, v1, v3, v2}, Lcom/kaolafm/sdk/client/EdogPage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaolafm/sdk/client/EdogPage;->EDOG:Lcom/kaolafm/sdk/client/EdogPage;

    new-instance v0, Lcom/kaolafm/sdk/client/EdogPage;

    const-string v1, "LIB"

    const-string v2, "Discovery"

    invoke-direct {v0, v1, v4, v2}, Lcom/kaolafm/sdk/client/EdogPage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaolafm/sdk/client/EdogPage;->LIB:Lcom/kaolafm/sdk/client/EdogPage;

    new-instance v0, Lcom/kaolafm/sdk/client/EdogPage;

    const-string v1, "PLAYER"

    const-string v2, "Fm"

    invoke-direct {v0, v1, v5, v2}, Lcom/kaolafm/sdk/client/EdogPage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaolafm/sdk/client/EdogPage;->PLAYER:Lcom/kaolafm/sdk/client/EdogPage;

    new-instance v0, Lcom/kaolafm/sdk/client/EdogPage;

    const-string v1, "ME"

    const-string v2, "UserCenter"

    invoke-direct {v0, v1, v6, v2}, Lcom/kaolafm/sdk/client/EdogPage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaolafm/sdk/client/EdogPage;->ME:Lcom/kaolafm/sdk/client/EdogPage;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaolafm/sdk/client/EdogPage;

    sget-object v1, Lcom/kaolafm/sdk/client/EdogPage;->EDOG:Lcom/kaolafm/sdk/client/EdogPage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaolafm/sdk/client/EdogPage;->LIB:Lcom/kaolafm/sdk/client/EdogPage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaolafm/sdk/client/EdogPage;->PLAYER:Lcom/kaolafm/sdk/client/EdogPage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaolafm/sdk/client/EdogPage;->ME:Lcom/kaolafm/sdk/client/EdogPage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kaolafm/sdk/client/EdogPage;->$VALUES:[Lcom/kaolafm/sdk/client/EdogPage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/kaolafm/sdk/client/EdogPage;->tag:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaolafm/sdk/client/EdogPage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/kaolafm/sdk/client/EdogPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/EdogPage;

    return-object v0
.end method

.method public static values()[Lcom/kaolafm/sdk/client/EdogPage;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/kaolafm/sdk/client/EdogPage;->$VALUES:[Lcom/kaolafm/sdk/client/EdogPage;

    invoke-virtual {v0}, [Lcom/kaolafm/sdk/client/EdogPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaolafm/sdk/client/EdogPage;

    return-object v0
.end method


# virtual methods
.method public tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/kaolafm/sdk/client/EdogPage;->tag:Ljava/lang/String;

    return-object v0
.end method
