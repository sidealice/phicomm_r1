.class public final enum Lcom/lzy/okserver/task/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okserver/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okserver/task/Priority;

.field public static final enum BG_LOW:Lcom/lzy/okserver/task/Priority;

.field public static final enum BG_NORMAL:Lcom/lzy/okserver/task/Priority;

.field public static final enum BG_TOP:Lcom/lzy/okserver/task/Priority;

.field public static final enum DEFAULT:Lcom/lzy/okserver/task/Priority;

.field public static final enum UI_LOW:Lcom/lzy/okserver/task/Priority;

.field public static final enum UI_NORMAL:Lcom/lzy/okserver/task/Priority;

.field public static final enum UI_TOP:Lcom/lzy/okserver/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/lzy/okserver/task/Priority;

    const-string v1, "UI_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lzy/okserver/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okserver/task/Priority;->UI_TOP:Lcom/lzy/okserver/task/Priority;

    .line 14
    new-instance v0, Lcom/lzy/okserver/task/Priority;

    const-string v1, "UI_NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/lzy/okserver/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okserver/task/Priority;->UI_NORMAL:Lcom/lzy/okserver/task/Priority;

    .line 15
    new-instance v0, Lcom/lzy/okserver/task/Priority;

    const-string v1, "UI_LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/lzy/okserver/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okserver/task/Priority;->UI_LOW:Lcom/lzy/okserver/task/Priority;

    .line 16
    new-instance v0, Lcom/lzy/okserver/task/Priority;

    const-string v1, "DEFAULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/lzy/okserver/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okserver/task/Priority;->DEFAULT:Lcom/lzy/okserver/task/Priority;

    .line 17
    new-instance v0, Lcom/lzy/okserver/task/Priority;

    const-string v1, "BG_TOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/lzy/okserver/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okserver/task/Priority;->BG_TOP:Lcom/lzy/okserver/task/Priority;

    .line 18
    new-instance v0, Lcom/lzy/okserver/task/Priority;

    const-string v1, "BG_NORMAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/lzy/okserver/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okserver/task/Priority;->BG_NORMAL:Lcom/lzy/okserver/task/Priority;

    .line 19
    new-instance v0, Lcom/lzy/okserver/task/Priority;

    const-string v1, "BG_LOW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/lzy/okserver/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okserver/task/Priority;->BG_LOW:Lcom/lzy/okserver/task/Priority;

    const/4 v0, 0x7

    .line 12
    new-array v0, v0, [Lcom/lzy/okserver/task/Priority;

    sget-object v1, Lcom/lzy/okserver/task/Priority;->UI_TOP:Lcom/lzy/okserver/task/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lzy/okserver/task/Priority;->UI_NORMAL:Lcom/lzy/okserver/task/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lzy/okserver/task/Priority;->UI_LOW:Lcom/lzy/okserver/task/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lzy/okserver/task/Priority;->DEFAULT:Lcom/lzy/okserver/task/Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lzy/okserver/task/Priority;->BG_TOP:Lcom/lzy/okserver/task/Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lzy/okserver/task/Priority;->BG_NORMAL:Lcom/lzy/okserver/task/Priority;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lzy/okserver/task/Priority;->BG_LOW:Lcom/lzy/okserver/task/Priority;

    aput-object v1, v0, v8

    sput-object v0, Lcom/lzy/okserver/task/Priority;->$VALUES:[Lcom/lzy/okserver/task/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okserver/task/Priority;
    .locals 1

    .line 12
    const-class v0, Lcom/lzy/okserver/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okserver/task/Priority;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okserver/task/Priority;
    .locals 1

    .line 12
    sget-object v0, Lcom/lzy/okserver/task/Priority;->$VALUES:[Lcom/lzy/okserver/task/Priority;

    invoke-virtual {v0}, [Lcom/lzy/okserver/task/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okserver/task/Priority;

    return-object v0
.end method
