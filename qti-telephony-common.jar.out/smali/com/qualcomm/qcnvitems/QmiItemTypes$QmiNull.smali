.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiNull;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiNull"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "val=null"

    return-object v0
.end method

.method public toTlv(S)[B
    .locals 1
    .param p1, "type"    # S

    .prologue
    .line 72
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
