.class final enum Lbutterknife/internal/FieldCollectionViewBinding$Kind;
.super Ljava/lang/Enum;
.source "FieldCollectionViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/internal/FieldCollectionViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbutterknife/internal/FieldCollectionViewBinding$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbutterknife/internal/FieldCollectionViewBinding$Kind;

.field public static final enum ARRAY:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

.field public static final enum LIST:Lbutterknife/internal/FieldCollectionViewBinding$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    const-string v1, "ARRAY"

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/FieldCollectionViewBinding$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->ARRAY:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    .line 6
    new-instance v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v3}, Lbutterknife/internal/FieldCollectionViewBinding$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->LIST:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    sget-object v1, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->ARRAY:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->LIST:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    aput-object v1, v0, v3

    sput-object v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->$VALUES:[Lbutterknife/internal/FieldCollectionViewBinding$Kind;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbutterknife/internal/FieldCollectionViewBinding$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    return-object v0
.end method

.method public static values()[Lbutterknife/internal/FieldCollectionViewBinding$Kind;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->$VALUES:[Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    invoke-virtual {v0}, [Lbutterknife/internal/FieldCollectionViewBinding$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    return-object v0
.end method
