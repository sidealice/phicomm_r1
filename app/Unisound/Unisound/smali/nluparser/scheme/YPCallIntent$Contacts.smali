.class public Lnluparser/scheme/YPCallIntent$Contacts;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/YPCallIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contacts"
.end annotation


# instance fields
.field name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field numbers:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "numbers"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numbers"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/YPCallIntent$Contacts;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumbers()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/YPCallIntent$Contacts;->numbers:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/YPCallIntent$Contacts;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumbers(Ljava/lang/String;)V
    .locals 0
    .param p1, "numbers"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/YPCallIntent$Contacts;->numbers:Ljava/lang/String;

    return-void
.end method
