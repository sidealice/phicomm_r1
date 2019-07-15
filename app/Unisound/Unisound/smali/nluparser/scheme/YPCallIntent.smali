.class public Lnluparser/scheme/YPCallIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/YPCallIntent$Contacts;
    }
.end annotation


# instance fields
.field contacts:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "contacts"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contacts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/YPCallIntent$Contacts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/YPCallIntent;->contacts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/YPCallIntent$Contacts;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/YPCallIntent;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/YPCallIntent$Contacts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/YPCallIntent$Contacts;>;"
    iput-object p1, p0, Lnluparser/scheme/YPCallIntent;->contacts:Ljava/util/List;

    return-void
.end method
