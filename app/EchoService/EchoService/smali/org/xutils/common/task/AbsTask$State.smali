.class public final enum Lorg/xutils/common/task/AbsTask$State;
.super Ljava/lang/Enum;
.source "AbsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/AbsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/common/task/AbsTask$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xutils/common/task/AbsTask$State;

.field public static final enum CANCELLED:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum ERROR:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum IDLE:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum STARTED:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum SUCCESS:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum WAITING:Lorg/xutils/common/task/AbsTask$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4, v4}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->IDLE:Lorg/xutils/common/task/AbsTask$State;

    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v5, v5}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6, v6}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v7, v7}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v8, v8}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    .line 134
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->IDLE:Lorg/xutils/common/task/AbsTask$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->$VALUES:[Lorg/xutils/common/task/AbsTask$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p3, p0, Lorg/xutils/common/task/AbsTask$State;->value:I

    .line 140
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/common/task/AbsTask$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    const-class v0, Lorg/xutils/common/task/AbsTask$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method

.method public static values()[Lorg/xutils/common/task/AbsTask$State;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->$VALUES:[Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v0}, [Lorg/xutils/common/task/AbsTask$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/xutils/common/task/AbsTask$State;->value:I

    return v0
.end method
