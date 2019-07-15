.class public final enum Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/message/HandlerSelectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandlerSelectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

.field public static final enum CANCEL:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

.field public static final enum CONFIRM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

.field public static final enum DEFAULT:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

.field public static final enum ITEM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

.field public static final enum LIST:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

.field public static final enum PAGE:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CONFIRM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CANCEL:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    const-string v1, "PAGE"

    invoke-direct {v0, v1, v5}, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->PAGE:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v6}, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->ITEM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v7}, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->LIST:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->DEFAULT:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CONFIRM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CANCEL:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->PAGE:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->ITEM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->LIST:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->DEFAULT:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->$VALUES:[Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;
    .locals 1

    sget-object v0, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->$VALUES:[Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-virtual {v0}, [Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    return-object v0
.end method
