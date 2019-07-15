.class public final enum Lcom/kaolafm/sdk/client/SearchType;
.super Ljava/lang/Enum;
.source "SearchType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaolafm/sdk/client/SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaolafm/sdk/client/SearchType;

.field public static final enum ALBUM:Lcom/kaolafm/sdk/client/SearchType;

.field public static final enum ALL:Lcom/kaolafm/sdk/client/SearchType;

.field public static final enum AUDIO:Lcom/kaolafm/sdk/client/SearchType;

.field public static final enum BROADCAST:Lcom/kaolafm/sdk/client/SearchType;

.field public static final enum PGC:Lcom/kaolafm/sdk/client/SearchType;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/kaolafm/sdk/client/SearchType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3, v3}, Lcom/kaolafm/sdk/client/SearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/SearchType;->ALL:Lcom/kaolafm/sdk/client/SearchType;

    .line 9
    new-instance v0, Lcom/kaolafm/sdk/client/SearchType;

    const-string v1, "PGC"

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v4, v2}, Lcom/kaolafm/sdk/client/SearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/SearchType;->PGC:Lcom/kaolafm/sdk/client/SearchType;

    .line 10
    new-instance v0, Lcom/kaolafm/sdk/client/SearchType;

    const-string v1, "ALBUM"

    const/16 v2, 0x4e20

    invoke-direct {v0, v1, v5, v2}, Lcom/kaolafm/sdk/client/SearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/SearchType;->ALBUM:Lcom/kaolafm/sdk/client/SearchType;

    .line 11
    new-instance v0, Lcom/kaolafm/sdk/client/SearchType;

    const-string v1, "AUDIO"

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v6, v2}, Lcom/kaolafm/sdk/client/SearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/SearchType;->AUDIO:Lcom/kaolafm/sdk/client/SearchType;

    .line 12
    new-instance v0, Lcom/kaolafm/sdk/client/SearchType;

    const-string v1, "BROADCAST"

    const v2, 0xc350

    invoke-direct {v0, v1, v7, v2}, Lcom/kaolafm/sdk/client/SearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/SearchType;->BROADCAST:Lcom/kaolafm/sdk/client/SearchType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kaolafm/sdk/client/SearchType;

    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->ALL:Lcom/kaolafm/sdk/client/SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->PGC:Lcom/kaolafm/sdk/client/SearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->ALBUM:Lcom/kaolafm/sdk/client/SearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->AUDIO:Lcom/kaolafm/sdk/client/SearchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->BROADCAST:Lcom/kaolafm/sdk/client/SearchType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kaolafm/sdk/client/SearchType;->$VALUES:[Lcom/kaolafm/sdk/client/SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/kaolafm/sdk/client/SearchType;->code:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaolafm/sdk/client/SearchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/kaolafm/sdk/client/SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/SearchType;

    return-object v0
.end method

.method public static values()[Lcom/kaolafm/sdk/client/SearchType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/kaolafm/sdk/client/SearchType;->$VALUES:[Lcom/kaolafm/sdk/client/SearchType;

    invoke-virtual {v0}, [Lcom/kaolafm/sdk/client/SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaolafm/sdk/client/SearchType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/kaolafm/sdk/client/SearchType;->code:I

    return v0
.end method
