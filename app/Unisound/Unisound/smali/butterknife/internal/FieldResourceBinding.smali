.class final Lbutterknife/internal/FieldResourceBinding;
.super Ljava/lang/Object;
.source "FieldResourceBinding.java"


# instance fields
.field private final id:I

.field private final method:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lbutterknife/internal/FieldResourceBinding;->id:I

    .line 10
    iput-object p2, p0, Lbutterknife/internal/FieldResourceBinding;->name:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lbutterknife/internal/FieldResourceBinding;->method:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lbutterknife/internal/FieldResourceBinding;->id:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbutterknife/internal/FieldResourceBinding;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbutterknife/internal/FieldResourceBinding;->name:Ljava/lang/String;

    return-object v0
.end method
