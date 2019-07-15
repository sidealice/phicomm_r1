.class public final enum Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
.super Ljava/lang/Enum;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/async/AsyncOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Insert"

    invoke-direct {v0, v1, v3}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxIterable"

    invoke-direct {v0, v1, v4}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxArray"

    invoke-direct {v0, v1, v5}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplace"

    invoke-direct {v0, v1, v6}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxIterable"

    invoke-direct {v0, v1, v7}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxArray"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Update"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxIterable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxArray"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Delete"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxIterable"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxArray"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteByKey"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteAll"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionRunnable"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionCallable"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "QueryList"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "QueryUnique"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Load"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "LoadAll"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Count"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Refresh"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 31
    const/16 v0, 0x16

    new-array v0, v0, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->$VALUES:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public static values()[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->$VALUES:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-virtual {v0}, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method
